import { Server } from '@modelcontextprotocol/sdk/server/index.js';
import { StdioServerTransport } from '@modelcontextprotocol/sdk/server/stdio.js';
import { 
  CallToolRequestSchema,
  ListToolsRequestSchema 
} from '@modelcontextprotocol/sdk/types.js';
import { ListonicAPI } from './listonic-api.js';
import { ChromeTokenBridge } from './chrome-token-bridge.js';
import dotenv from 'dotenv';

dotenv.config();

const server = new Server(
  {
    name: 'mcp-listonic',
    version: '1.0.0',
    description: 'MCP server for Listonic shopping list management'
  },
  {
    capabilities: {
      tools: {}
    }
  }
);

const bridge = new ChromeTokenBridge();
const api = bridge.getAPI();
let isAuthenticated = false;

// Auto-login function
async function performAutoLogin() {
  // First try to load saved tokens
  console.error('Checking for saved tokens...');
  if (await bridge.loadSavedTokens()) {
    isAuthenticated = true;
    console.error('Loaded saved tokens successfully');
    return;
  }
  
  // If no saved tokens, try direct login (currently not working)
  if (process.env.LISTONIC_EMAIL && process.env.LISTONIC_PASSWORD) {
    try {
      console.error('Attempting auto-login...');
      await api.login(process.env.LISTONIC_EMAIL, process.env.LISTONIC_PASSWORD);
      isAuthenticated = true;
      console.error('Auto-login successful for:', process.env.LISTONIC_EMAIL);
      await bridge.saveCurrentTokens();
    } catch (err) {
      console.error('Auto-login failed:', err.message);
      console.error('\n⚠️  Direct API login is currently not working.');
      console.error('Please use the Chrome extension to log in and extract tokens.');
      console.error('See chrome-token-bridge.js for instructions.');
    }
  } else {
    console.error('No credentials found in environment variables');
    console.error('\n⚠️  Direct API login is currently not working.');
    console.error('Please use the Chrome extension to log in and extract tokens.');
    console.error('See chrome-token-bridge.js for instructions.');
  }
}

// Debug environment
console.error('MCP Listonic Server starting...');
console.error('Environment check:', {
  hasEmail: !!process.env.LISTONIC_EMAIL,
  hasPassword: !!process.env.LISTONIC_PASSWORD,
  email: process.env.LISTONIC_EMAIL ? process.env.LISTONIC_EMAIL.substring(0, 3) + '***' : 'not set'
});

// Perform auto-login on startup
await performAutoLogin();

// Tool handler
server.setRequestHandler(CallToolRequestSchema, async (request) => {
  const { name, arguments: args } = request.params;

  try {
    switch (name) {
      case 'listonic_login':
        const loginResult = await api.login(args.email, args.password);
        isAuthenticated = true;
        await bridge.saveCurrentTokens();
        return {
          content: [{
            type: 'text',
            text: `Successfully logged in as ${loginResult.user.email}`
          }]
        };

      case 'listonic_set_token':
        await bridge.setTokenFromChrome(args.token, args.refreshToken, args.tokenExpiry);
        isAuthenticated = true;
        try {
          const userInfo = await api.getUserInfo();
          return {
            content: [{
              type: 'text',
              text: `Token set successfully. Logged in as: ${userInfo.email}`
            }]
          };
        } catch (error) {
          isAuthenticated = false;
          throw new Error('Invalid token provided');
        }

      case 'listonic_get_lists':
        if (!isAuthenticated) {
          throw new Error('Not authenticated. Please login first.');
        }
        const lists = await api.getLists(args.includeItems || false);
        return {
          content: [{
            type: 'text',
            text: JSON.stringify(lists, null, 2)
          }]
        };

      case 'listonic_create_list':
        if (!isAuthenticated) {
          throw new Error('Not authenticated. Please login first.');
        }
        const newList = await api.createList(args.name);
        return {
          content: [{
            type: 'text',
            text: `Created list "${newList.name}" with ID: ${newList.id}`
          }]
        };

      case 'listonic_add_items':
        if (!isAuthenticated) {
          throw new Error('Not authenticated. Please login first.');
        }
        const result = await api.addItems(args.listId, args.items);
        return {
          content: [{
            type: 'text',
            text: `Added ${result.succeeded} items successfully. Failed: ${result.failed}`
          }]
        };

      case 'listonic_update_item':
        if (!isAuthenticated) {
          throw new Error('Not authenticated. Please login first.');
        }
        await api.updateItem(args.listId, args.itemId, args.updates);
        return {
          content: [{
            type: 'text',
            text: 'Item updated successfully'
          }]
        };

      case 'listonic_delete_item':
        if (!isAuthenticated) {
          throw new Error('Not authenticated. Please login first.');
        }
        await api.deleteItem(args.listId, args.itemId);
        return {
          content: [{
            type: 'text',
            text: 'Item deleted successfully'
          }]
        };

      case 'listonic_delete_list':
        if (!isAuthenticated) {
          throw new Error('Not authenticated. Please login first.');
        }
        await api.deleteList(args.listId);
        return {
          content: [{
            type: 'text',
            text: 'List deleted successfully'
          }]
        };

      default:
        throw new Error(`Unknown tool: ${name}`);
    }
  } catch (error) {
    return {
      content: [{
        type: 'text',
        text: `Error: ${error.message}`
      }],
      isError: true
    };
  }
});

// List available tools
server.setRequestHandler(ListToolsRequestSchema, async () => {
  return {
    tools: [
      {
        name: 'listonic_login',
        description: 'Login to Listonic account',
        inputSchema: {
          type: 'object',
          properties: {
            email: {
              type: 'string',
              description: 'Listonic account email'
            },
            password: {
              type: 'string',
              description: 'Listonic account password'
            }
          },
          required: ['email', 'password']
        }
      },
      {
        name: 'listonic_set_token',
        description: 'Set authentication token manually (extracted from Chrome extension)',
        inputSchema: {
          type: 'object',
          properties: {
            token: {
              type: 'string',
              description: 'The access token from Chrome extension'
            },
            refreshToken: {
              type: 'string',
              description: 'The refresh token (optional)'
            },
            tokenExpiry: {
              type: 'number',
              description: 'Token expiry timestamp in milliseconds (optional)'
            }
          },
          required: ['token']
        }
      },
      {
        name: 'listonic_get_lists',
        description: 'Get all shopping lists',
        inputSchema: {
          type: 'object',
          properties: {
            includeItems: {
              type: 'boolean',
              description: 'Include items in each list',
              default: false
            }
          }
        }
      },
      {
        name: 'listonic_create_list',
        description: 'Create a new shopping list',
        inputSchema: {
          type: 'object',
          properties: {
            name: {
              type: 'string',
              description: 'Name of the new list'
            }
          },
          required: ['name']
        }
      },
      {
        name: 'listonic_add_items',
        description: 'Add items to a shopping list',
        inputSchema: {
          type: 'object',
          properties: {
            listId: {
              type: 'string',
              description: 'ID of the list to add items to'
            },
            items: {
              type: 'array',
              description: 'Array of items to add',
              items: {
                oneOf: [
                  {
                    type: 'string',
                    description: 'Simple item name'
                  },
                  {
                    type: 'object',
                    properties: {
                      name: {
                        type: 'string',
                        description: 'Item name'
                      },
                      amount: {
                        type: 'string',
                        description: 'Amount (e.g., "2", "500")'
                      },
                      unit: {
                        type: 'string',
                        description: 'Unit (e.g., "kg", "ml", "sztuki")'
                      }
                    },
                    required: ['name']
                  }
                ]
              }
            }
          },
          required: ['listId', 'items']
        }
      },
      {
        name: 'listonic_update_item',
        description: 'Update an item in a shopping list',
        inputSchema: {
          type: 'object',
          properties: {
            listId: {
              type: 'string',
              description: 'ID of the list containing the item'
            },
            itemId: {
              type: 'string',
              description: 'ID of the item to update'
            },
            updates: {
              type: 'object',
              description: 'Fields to update',
              properties: {
                name: {
                  type: 'string',
                  description: 'New item name'
                },
                amount: {
                  type: 'string',
                  description: 'New amount'
                },
                unit: {
                  type: 'string',
                  description: 'New unit'
                },
                Checked: {
                  type: 'integer',
                  description: 'Mark as checked (1) or unchecked (0)'
                }
              }
            }
          },
          required: ['listId', 'itemId', 'updates']
        }
      },
      {
        name: 'listonic_delete_item',
        description: 'Delete an item from a shopping list',
        inputSchema: {
          type: 'object',
          properties: {
            listId: {
              type: 'string',
              description: 'ID of the list containing the item'
            },
            itemId: {
              type: 'string',
              description: 'ID of the item to delete'
            }
          },
          required: ['listId', 'itemId']
        }
      },
      {
        name: 'listonic_delete_list',
        description: 'Delete a shopping list',
        inputSchema: {
          type: 'object',
          properties: {
            listId: {
              type: 'string',
              description: 'ID of the list to delete'
            }
          },
          required: ['listId']
        }
      }
    ]
  };
});

// Start the server
const transport = new StdioServerTransport();
await server.connect(transport);
console.error('Listonic MCP server started');