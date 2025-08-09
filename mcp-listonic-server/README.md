# MCP Listonic Server

MCP (Model Context Protocol) server for Listonic integration. Control your shopping lists with AI through Claude Desktop or other MCP-compatible tools.

## Important Note

⚠️ **Direct login via API is currently not working due to API changes.** The Listonic API now returns "Unauthorized token. Token is invalid" for direct login attempts. 

### Alternative Setup:
1. Install the AutoListonic Chrome extension
2. Log in to app.listonic.com in your browser
3. The Chrome extension will capture your authentication token
4. You can then use the MCP server with the captured token (implementation pending)

## Features

- 🔐 Login to Listonic account
- 📋 Get all shopping lists
- ➕ Create new lists
- 🛒 Add items to lists (with quantities and units)
- ✏️ Update items
- 🗑️ Delete items and lists
- ✅ Mark items as checked/unchecked

## Installation

1. Clone or copy this directory
2. Install dependencies:
   ```bash
   cd mcp-listonic-server
   npm install
   ```

3. (Optional) Create `.env` file for auto-login:
   ```bash
   cp .env.example .env
   # Edit .env with your Listonic credentials
   ```

## Configuration for Claude Desktop

Add to your Claude Desktop configuration file:

**Windows:** `%APPDATA%\Claude\claude_desktop_config.json`
**macOS:** `~/Library/Application Support/Claude/claude_desktop_config.json`

```json
{
  "mcpServers": {
    "listonic": {
      "command": "node",
      "args": ["C:/Projekty/SYCHPL/listonic/mcp-listonic-server/src/index.js"],
      "env": {
        "LISTONIC_EMAIL": "your-email@example.com",
        "LISTONIC_PASSWORD": "your-password"
      }
    }
  }
}
```

**Note:** Replace the path in `args` with the actual path to your MCP server installation.

## Available Tools

### 🔐 listonic_login
Login to your Listonic account.
```
Parameters:
- email: Your Listonic email
- password: Your Listonic password
```

### 📋 listonic_get_lists
Get all your shopping lists.
```
Parameters:
- includeItems: (optional) Include items in response (default: false)
```

### ➕ listonic_create_list
Create a new shopping list.
```
Parameters:
- name: Name of the new list
```

### 🛒 listonic_add_items
Add items to a shopping list.
```
Parameters:
- listId: ID of the list
- items: Array of items (strings or objects with name, amount, unit)

Examples:
- Simple: ["Mleko", "Chleb", "Masło"]
- With quantities: [
    {"name": "Mleko", "amount": "2", "unit": "l"},
    {"name": "Mąka", "amount": "1", "unit": "kg"}
  ]
```

### ✏️ listonic_update_item
Update an item in a list.
```
Parameters:
- listId: ID of the list
- itemId: ID of the item
- updates: Object with fields to update (name, amount, unit, Checked)
```

### 🗑️ listonic_delete_item
Delete an item from a list.
```
Parameters:
- listId: ID of the list
- itemId: ID of the item
```

### 🗑️ listonic_delete_list
Delete an entire shopping list.
```
Parameters:
- listId: ID of the list to delete
```

## Usage Examples with Claude

After configuring, you can use natural language commands:

- "Log me into Listonic with email@example.com and password123"
- "Show me all my shopping lists"
- "Create a new list called 'Zakupy na weekend'"
- "Add milk, bread and 2kg of apples to my first list"
- "Mark the milk as bought in my shopping list"
- "Delete the completed items from my list"

## Development

Run in development mode with auto-reload:
```bash
npm run dev
```

## Troubleshooting

1. **Authentication errors**: Make sure your email and password are correct
2. **Connection errors**: Check your internet connection
3. **MCP errors**: Ensure Claude Desktop is properly configured

## Security

- Credentials are stored only in your local environment
- All communication with Listonic API is over HTTPS
- Tokens are refreshed automatically when expired

## License

MIT