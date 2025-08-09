{
  "log": {
    "version": "1.2",
    "creator": {
      "name": "WebInspector",
      "version": "537.36"
    },
    "pages": [
      {
        "startedDateTime": "2025-08-08T12:08:08.517Z",
        "id": "page_4",
        "title": "https://app.listonic.com/pl/lists/194157372",
        "pageTimings": {
          "onContentLoad": 1341.1489999853075,
          "onLoad": 2745.4780000261962
        }
      }
    ],
    "entries": [
      {
        "_connectionId": "5255072",
        "_initiator": {
          "type": "script",
          "stack": {
            "callFrames": [
              {
                "functionName": "",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 15,
                "columnNumber": 155574
              },
              {
                "functionName": "",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 15,
                "columnNumber": 124022
              },
              {
                "functionName": "qr",
                "scriptId": "1154",
                "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                "lineNumber": 1,
                "columnNumber": 55225
              },
              {
                "functionName": "",
                "scriptId": "1154",
                "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                "lineNumber": 1,
                "columnNumber": 54410
              },
              {
                "functionName": "",
                "scriptId": "1154",
                "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                "lineNumber": 1,
                "columnNumber": 9507
              },
              {
                "functionName": "",
                "scriptId": "1154",
                "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                "lineNumber": 1,
                "columnNumber": 9612
              },
              {
                "functionName": "o",
                "scriptId": "1154",
                "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                "lineNumber": 1,
                "columnNumber": 8329
              }
            ],
            "parent": {
              "description": "Promise.then",
              "callFrames": [
                {
                  "functionName": "c",
                  "scriptId": "1154",
                  "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                  "lineNumber": 1,
                  "columnNumber": 8494
                },
                {
                  "functionName": "",
                  "scriptId": "1154",
                  "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                  "lineNumber": 1,
                  "columnNumber": 8504
                },
                {
                  "functionName": "dt",
                  "scriptId": "1154",
                  "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                  "lineNumber": 1,
                  "columnNumber": 8272
                },
                {
                  "functionName": "Hr",
                  "scriptId": "1154",
                  "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                  "lineNumber": 1,
                  "columnNumber": 53536
                },
                {
                  "functionName": "",
                  "scriptId": "1154",
                  "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                  "lineNumber": 1,
                  "columnNumber": 69018
                },
                {
                  "functionName": "o",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 15,
                  "columnNumber": 148896
                }
              ],
              "parent": {
                "description": "setTimeout",
                "callFrames": [
                  {
                    "functionName": "",
                    "scriptId": "1124",
                    "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                    "lineNumber": 15,
                    "columnNumber": 154997
                  },
                  {
                    "functionName": "Q",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 7424
                  },
                  {
                    "functionName": "Wr",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 53393
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 50794
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 9507
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 9612
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 8527
                  },
                  {
                    "functionName": "dt",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 8272
                  },
                  {
                    "functionName": "mr",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 48088
                  },
                  {
                    "functionName": "Qe",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 22091
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 69018
                  },
                  {
                    "functionName": "o",
                    "scriptId": "1124",
                    "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                    "lineNumber": 15,
                    "columnNumber": 148896
                  }
                ]
              }
            }
          }
        },
        "_priority": "High",
        "_resourceType": "xhr",
        "cache": {},
        "connection": "443",
        "pageref": "page_4",
        "request": {
          "method": "POST",
          "url": "https://b.clarity.ms/collect",
          "httpVersion": "HTTP/1.1",
          "headers": [
            {
              "name": "Accept",
              "value": "application/x-clarity-gzip"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate, br, zstd"
            },
            {
              "name": "Accept-Language",
              "value": "pl,en-US;q=0.9,en;q=0.8"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Content-Length",
              "value": "679"
            },
            {
              "name": "Host",
              "value": "b.clarity.ms"
            },
            {
              "name": "Origin",
              "value": "https://app.listonic.com"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Referer",
              "value": "https://app.listonic.com/"
            },
            {
              "name": "Sec-Fetch-Dest",
              "value": "empty"
            },
            {
              "name": "Sec-Fetch-Mode",
              "value": "cors"
            },
            {
              "name": "Sec-Fetch-Site",
              "value": "cross-site"
            },
            {
              "name": "Sec-Fetch-Storage-Access",
              "value": "active"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36"
            },
            {
              "name": "sec-ch-ua",
              "value": "\"Not)A;Brand\";v=\"8\", \"Chromium\";v=\"138\", \"Google Chrome\";v=\"138\""
            },
            {
              "name": "sec-ch-ua-mobile",
              "value": "?0"
            },
            {
              "name": "sec-ch-ua-platform",
              "value": "\"Windows\""
            }
          ],
          "queryString": [],
          "cookies": [],
          "headersSize": 731,
          "bodySize": 1005,
          "postData": {
            "mimeType": "",
            "text": "\u001f\b\u0000\u0000\u0000\u0000\u0000\u0000\n¥TMÓ0\u0010ý++_[Ç3¶\u0017õÎ\u0001nÜV=d»\u0006B[v\u0001!$~\u000b?_ì8m\u0005»â\u0012Õñ{ÓùxöÌ7ÓÛ;cçqîØ @5\u0007'O\tfã\u000e\u001fÛC\u0013\fÌCó¸ñk\u0003Ó4_¶Ý{\u0003-Ù\u001cûáv±höûyß\rÇÝ¶[Ï×»}¿ÈûaAÉ\u0004\u000eÎ¬`\u001as{wGÖ&¸\bóØ\rÝ}ß\u00152*AA\u000eD\u0016DäAî\u001fx\u001cqQ\u0010¹\u0004Ö'Ê8\u0007\u0001W¨¸Z{±WA:ãÅd÷1ØV¼ÄÊ¾AÎ&N\u001b\u0003p^8ÂY_\tÏ!\u0013êà8MD(!\u0005±\u0013°£JÈ\u0018;8\u0010«\u0007k¬ÒH0S·a\"ÒHxw\fÏS\u0019±\u0004÷.\u0013jáÃnLç:|TøT\u0005Ô\u0014§Â\u0002jìp\u0011DX ®V\u0011\u0012#.\u000eâkà.ö\u001a Rý\u0007Og<XÔ\u0003µ\u0013Dj\u00051ú\u000bÎ\u0010©\"¥«|@|Í'¹+?\u0011â«$¸ÑB<\u0017¬Ëò?sxÚþ\u0019?Ïß?§k\u0018.Ú@ÞÆ\u0000[ÚÆüúñóú½ùßÁöÔ÷0túpÿItÎòö°ï7¥MKbNüE¨\u000f*®\u0017Áðd\u001fxÂÕæ\u000bà'üìGóÅ¨è$\u0005Ô|@v²OgÿÁåµÆU{\u00166\u0004­ø8|Ö)\u0016^ùê+\u001br\\.R,zrð¥\u0011\u001dwEgÈY\u000b¡l+c?)ì<÷\u0003ç\u0015$ÈO\u001e7p\u0002ï.¬PÜEr$9\u001fk)7nù\n¤\u0005¢\u0018vµZÁìÇqW\u0010\u0005gw0/ß¼~e`úfûn¹ï\rÌºoaÙwï6G\u00033\u001c¿öír½ëwÙ°Þ´\u001fÛÛÂ½(øØÌ\u000eíCûØ5Çn·Ý\u000f³S÷°üãNýýNÿÝ´ÍCß\u000eÃ©½Ý­OÃ¬Nà¥Y­¾ÿ\u0006?éN\u0012\u0006\u0000\u0000"
          }
        },
        "response": {
          "status": 204,
          "statusText": "No Content",
          "httpVersion": "HTTP/1.1",
          "headers": [
            {
              "name": "Access-Control-Allow-Credentials",
              "value": "true"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "https://app.listonic.com"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Date",
              "value": "Fri, 08 Aug 2025 12:09:58 GMT"
            },
            {
              "name": "Request-Context",
              "value": "appId=cid-v1:2f7711a9-b21e-4abe-a9d6-5b0ce5d18b64"
            },
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Vary",
              "value": "Origin"
            }
          ],
          "cookies": [],
          "content": {
            "size": 0,
            "mimeType": "text/plain",
            "compression": 0,
            "text": ""
          },
          "redirectURL": "",
          "headersSize": 280,
          "bodySize": 0,
          "_transferSize": 280,
          "_error": null,
          "_fetchedViaServiceWorker": false
        },
        "serverIPAddress": "4.153.129.168",
        "startedDateTime": "2025-08-08T12:09:57.111Z",
        "time": 410.94400008888545,
        "timings": {
          "blocked": 0.602000075519085,
          "dns": 0.0040000000000000036,
          "ssl": 141.17399999999998,
          "connect": 263.789,
          "send": 0.20700000000005048,
          "wait": 145.8620000836998,
          "receive": 0.47999992966651917,
          "_blocked_queueing": 0.43800007551908493,
          "_workerStart": -1,
          "_workerReady": -1,
          "_workerFetchStart": -1,
          "_workerRespondWithSettled": -1
        }
      },
      {
        "_connectionId": "5255072",
        "_initiator": {
          "type": "script",
          "stack": {
            "callFrames": [
              {
                "functionName": "",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 15,
                "columnNumber": 155574
              },
              {
                "functionName": "",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 15,
                "columnNumber": 124022
              },
              {
                "functionName": "qr",
                "scriptId": "1154",
                "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                "lineNumber": 1,
                "columnNumber": 55225
              },
              {
                "functionName": "",
                "scriptId": "1154",
                "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                "lineNumber": 1,
                "columnNumber": 54410
              },
              {
                "functionName": "",
                "scriptId": "1154",
                "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                "lineNumber": 1,
                "columnNumber": 9507
              },
              {
                "functionName": "",
                "scriptId": "1154",
                "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                "lineNumber": 1,
                "columnNumber": 9612
              },
              {
                "functionName": "o",
                "scriptId": "1154",
                "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                "lineNumber": 1,
                "columnNumber": 8329
              }
            ],
            "parent": {
              "description": "Promise.then",
              "callFrames": [
                {
                  "functionName": "c",
                  "scriptId": "1154",
                  "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                  "lineNumber": 1,
                  "columnNumber": 8494
                },
                {
                  "functionName": "",
                  "scriptId": "1154",
                  "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                  "lineNumber": 1,
                  "columnNumber": 8504
                },
                {
                  "functionName": "dt",
                  "scriptId": "1154",
                  "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                  "lineNumber": 1,
                  "columnNumber": 8272
                },
                {
                  "functionName": "Hr",
                  "scriptId": "1154",
                  "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                  "lineNumber": 1,
                  "columnNumber": 53536
                },
                {
                  "functionName": "",
                  "scriptId": "1154",
                  "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                  "lineNumber": 1,
                  "columnNumber": 69018
                },
                {
                  "functionName": "o",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 15,
                  "columnNumber": 148896
                }
              ],
              "parent": {
                "description": "setTimeout",
                "callFrames": [
                  {
                    "functionName": "",
                    "scriptId": "1124",
                    "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                    "lineNumber": 15,
                    "columnNumber": 154997
                  },
                  {
                    "functionName": "Q",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 7424
                  },
                  {
                    "functionName": "Wr",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 53393
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 48564
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 9507
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 9612
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 8527
                  },
                  {
                    "functionName": "dt",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 8272
                  },
                  {
                    "functionName": "mr",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 48088
                  },
                  {
                    "functionName": "ui",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 57504
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 57445
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 9507
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 9612
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 8527
                  },
                  {
                    "functionName": "dt",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 8272
                  },
                  {
                    "functionName": "oi",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 57204
                  },
                  {
                    "functionName": "ke",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 18980
                  },
                  {
                    "functionName": "we",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 18952
                  },
                  {
                    "functionName": "ye",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 17872
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 69018
                  },
                  {
                    "functionName": "o",
                    "scriptId": "1124",
                    "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                    "lineNumber": 15,
                    "columnNumber": 148896
                  }
                ]
              }
            }
          }
        },
        "_priority": "High",
        "_resourceType": "xhr",
        "cache": {},
        "connection": "443",
        "pageref": "page_4",
        "request": {
          "method": "POST",
          "url": "https://b.clarity.ms/collect",
          "httpVersion": "HTTP/1.1",
          "headers": [
            {
              "name": "Accept",
              "value": "application/x-clarity-gzip"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate, br, zstd"
            },
            {
              "name": "Accept-Language",
              "value": "pl,en-US;q=0.9,en;q=0.8"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Content-Length",
              "value": "4985"
            },
            {
              "name": "Host",
              "value": "b.clarity.ms"
            },
            {
              "name": "Origin",
              "value": "https://app.listonic.com"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Referer",
              "value": "https://app.listonic.com/"
            },
            {
              "name": "Sec-Fetch-Dest",
              "value": "empty"
            },
            {
              "name": "Sec-Fetch-Mode",
              "value": "cors"
            },
            {
              "name": "Sec-Fetch-Site",
              "value": "cross-site"
            },
            {
              "name": "Sec-Fetch-Storage-Access",
              "value": "active"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36"
            },
            {
              "name": "sec-ch-ua",
              "value": "\"Not)A;Brand\";v=\"8\", \"Chromium\";v=\"138\", \"Google Chrome\";v=\"138\""
            },
            {
              "name": "sec-ch-ua-mobile",
              "value": "?0"
            },
            {
              "name": "sec-ch-ua-platform",
              "value": "\"Windows\""
            }
          ],
          "queryString": [],
          "cookies": [],
          "headersSize": 732,
          "bodySize": 7516,
          "postData": {
            "mimeType": "",
            "text": "\u001f\b\u0000\u0000\u0000\u0000\u0000\u0000\ní[[ã6þ+\\\u0005û² Õ¼_ªà$Ý\tÐ\u0004`B=¨lUÒ²eÈr]z±ÀþýiûK\u0016<¤dwU§ÁÎÓ IÙþ\u000eyxxî¤ÿ¬Úêâªâµ¯¥ª¨§[á\u0014uJ\u0006ZÝËÑ«vl\\E«Móp¯×\u0015­æi×ýZQAyü§º¦ýáâÍf¿¯ûî0\r»n]¯í}ÿ\u0006~\u001fÞ qÊÉêVMuqu%¸Ö\\R!©áT8«¨áêF\\Ø[\u001d¨\u0011:ã.ãF\u0019j¤@\\¦ñÎQ¡5§FZ$(Q\bJ\u001bj\u0014Ï\b\ni\u001d5J\"A¥%_âF\u0001n%§Bh dlZ\u0003ë%!-a\u001c\u0015ÜË\u0005Ák hc¨àfÉ*¨\u0010¥E\u0011\u0019\u0012fàÆ²\u000b¦FD°'\u0004µ 0\u0013¸UeÌ\u0010$5\u00127n}á\u0014\u001cØÂ'ÜñÂ(XA@\\²æ\u0006Ã©áÈßISp\u0015f[;\u0015×U^Ð \rè1ã!á\u0006¡©\u000eO2PÄ¹¥: \\2\u0010¸\u000fêù$ûDÜsª}æc}4¨ÐÔ[OµÏò$ëDÜ\bª\u001d÷Ü\u0016\\Yª\u001dò÷2\u0014\\\u001aª­¸áZÎ¸^àI\u000bGµå\u0019åáj£\u0011wÑç\u001dÔ\u0005KµV'9#î%Õ*\u000f)¦¤ÎIªÑð\u0007õ\u0006ªÒhG#Ò¾\u000bÔiIµ@y@=pêD *\bÄ¥È¸\r*'\u0011O\u001egC ÖjªE\\'»\u0007C­VTeùA»\bj\u0015§Jåñ&Éé<µBP%\râ\u0016ýPRË9U\u0002õ)\\ÓhEM0TÌß'9¹¡Æ\u001bªxæãý+ªx?ØÂÇ\u000bªÐ\u000f\u0014¡àÎQ\u0019¿ÔbÆ\r>d<â(§4E~ã\u0014\u001eå.Ì¸¤Òçu½=Á]æ\u001fR.à\u001a'¨tÈ_a<\u0016\u001cýAIõpÜ¯Â¸¸¦Ò¢?(/ç¨qJr*£gÜSiÑ\u001fTòg\u0015BÔ4Å}\tj¼¦Òd>.é\u0019r÷TÌÇÏx\u0010TjÜæ\u0005·\\SýDcN\f\"úÄDm4úgP1¤ô\u0019\u000f3î©\u000fú-ä.¨F¿âÔJI%Ö\u001a£­=ÅÑ^Ú-Æ«\u0005ü0Ê\t¸@;\u001anf\\SýÙ\b?ãJr\u001a¥³\u0013ú4Éßf\u001cí\u000eNVpKe\u000b\u0013ô)ûµ<â¸_+?$\u001c÷eqC%G=['âJÌÿÆ¢88Êi½>ÅQNóMzËñè\u0004Êï#.\u0002®ë\u001d#\u000e!uÁ8Ì3S\u000bíCÀýºO2ùûÅx»ÄS\\Gþ\u001cï^¨S\u001c÷ë±'ÉòxÇ';ÚüG`Ý1^+GEkolÁµ§\"Çµ·¦à2]æãDÁ½¡\"×\u001dï\nÇ=4V\"OT¡E>,¿³\\§B®ûº`¨Èñ\u001eDÑ'Ô/apÝ uÁ®\u000bA©)r½\u000bªð÷aëÂ?Ý\u000bn\nÿ\u0000¥¦à¶Ø1~f¼ð_\u000bîg>~æo9×\u0005}b\u001e³\\ñSÜ\"®\u0017|tÑåÖ\u0015\u001cLùÓr?ËãLÑ¿\u0015ú\fGy;ÃQ\u001eÉÏpGÚ3Ü!\u001eä\u0019WBÍúñ\u0001q5ëÁBÃÎ\u001173Ø:ú§Us\u001c\u00059û³Õ|Ö\u000f¸LÁgÿ~O8Ô\u001b4\u000eB}çüyÇ<¦_ÆÃ\u0012Ð\u0006\u0007\u000bÖÂ\u0019\u0006Î2Õÿþ÷ÿ,ÿ%àGEwÇ¾§Új+¦éùPËg¹Þ´ÓÝ=\u001cÕÀcrI\u000bXõ°²à 5Ì\u000eN \u0015\u0003hY,ãÃê\u0005^n¨ð\u001eñ \nî9\u0015!¯\u001b\"\u001f\u0011\u000f% ©Ôï$/ç\u001e®|IÏNbº\u0014´¹8ê¬\u0001·\u0016ÊQ©Ð&ç¥b;<ÈÄF\u0017J'~'±ÔF\u0002ôF6\u000be¢6\u0004ü§\u0014§2«C&§\u0003iå¥)sÒ]h\u0007Ä±8\u0003®%U\"ã¾\u001c@µãTÉGþ\u0001bÁpèZÑ>*y]\u0001§²ÜÎ:%¢:\u0002H\f½ÊS©L\u000437ÆN¥\u0004\bNPeóÔY\u0006\u0005Y\u000bZQ\f}§¬\tÐëbì;ì\"Á¸ SR@_\u0010Ô¼\u0006-éÂáù7\u0011¤£\nûB\u0007`8£\t¨ý\n\u0013Ã\u0003p\"hM\u0013\u0010;àà\u0018\u000f;ÇÔàtrÚ\u0000'\u001bh\u000bËR¥\bÎCs\b/f@7ïq\r¼\u0010\tvAHÇ\u0005A\"Á³B\u000bÀ\u0017»`ÅB*«\u0016\u0004µaÜ¼¸UË\u000b8t!!yúBWèpx,Gíºyç\u0016\b\u001fVÉ\u0005ÁáÎ¡fË®l*èN|'öHî-sr\u0011\u001d\u000e{\u001bgíDC]Î\u0016Î.XÁiãÎñô\u00049\u0013B8'$©<\u0017¬2áÎ4\u0011\u0004_JeT^ÈT\u000ezA\u0004³XÃé\u0005Á-Öp*ì\u001a}lyÔ\u000b\u0004\u000f\u0004ý\n!àà_\"Í+¼(¥!ÕC?nÚLuþ\u0012¯Ó\"¯`Ì¢Ç\t.S\u0013± H$x¿ Ø\u0005!Ø3H\u0004¥k¸\u0005ÁÉ7²8\u0012Òõ\u0014ú\tXºÇAú)\u0004µðQH?`>*\u0016cEçÍRé°$¨`1#Ï\u0004ÜyµJ´îN\u0004·ÜG$\u0018$(¹ è\u0005A\u0013,\u0012\u0016^\b\u000e\tÞ\u0011|\"x¾\\Üdw«Ã¥¸6\u0007\b\\Oê\u00193!Ø3%&VR¸<Å¥PjAÅbá%pD\tv±8\u0017\u000bÂR*¸¨É\u0004É\u0017A\u0018BÑÒ,\bzAÐîÌá2Á,gLH\u0017×\u001aº,\u001f\u0017³jñ-6yÎYj\u0000áÂ\u0007À ¦à÷LH¿çñ\u000eGpÁáÎwñ;Þ9)óxþ£\fSIÁÁ\u0014(j¨¡p>Vf\u001e¤,µ¥)\u0005nÜïñëëkZíÓåx¤Yª¨ V~ÿîmE«¾ÙÝ­ö}E«uß\u001c\u000e«¾»»*Z\u001d¦ç¾]­~\u0018Ùa}ßnÛ\u000b\u0012iñÚ~jØØnÚ®ºaÇn\u000eìØmVgÍî§ÿVØ9K\u0005\u0004\u001f\u000fãÕ7}ÿþÇ\u001f\bwãpÜ±í©{hÉöÚGv{ì{²>adû¡ÛMíHöÏLM3~¸¸\u001f\u001eÚñâæÁ¯wÃ¦esrØ^Ãq·i7¬¿#eÌÝØ<3ÃÉÍ0nÚ\u0011?ØMlâ¼¢Õô¼oW7Çi\u001av\u00154sZÐêOßÿRd¼íÛ'òëñ0u·ÏlÝFYî=ódÃ<Æfwè¢jâ×ÛaÜíæbÛíØ=»2rl·×\u0000ì'iLßL-{b»qx,&X°Ú\u001cÇ¨î\u000b¢8ß\u001e.+\u001a &ÞZ_kZCß®6]Ó\u000fw\u0015­ºÍjl6Ý\u0013»\u0018es\u0001\u000fYÆ®aö°\u001e»vsó<×Ü77mßRo.²Í\u000fS3µ«ÓÃIÖH÷ÔnÈÍ0MÃq2¯0N¦aÏ8ùÈ´!QghFøÎÖCOÀ\"·ýðÈYs\u0006rsÇ\u001eï»©%Ãqê»]ËvÃ®M\u0016F+\u0015û*Î°0º6d>~âDé¯øÃ¾Ý]_4»n\u000b\u001aïv'Äu?\u001cÚÍL\u001eÓôCßm\"M\u0003}a4¨Û±ÛqØ¦Qà[ÍM·Û´O+&¾ÄÊ$ò\u0003Èè\u0004WÚëln\u00175\u0017õ}è>B$nj·ì©g»¢þ©}RhÎ?\r\u0004Ì\u0002çävX\u001f\u000f\u0017'vKÐØíî^þsÄ+ö{%5?!Åµ¬\u0011]p?ñææ0ôÇ©EÔÑ#u\u0015Ob 9Ð`\f|\u001e\tÄqÔ^qÓ\u0013õí'&l\u0015OýZrHj¿\u001f»Ý\u0007ÆªÛÝ&&\bÍ¿D]HÎgÝÿ>oºõç9ðöOÌBZ[4q{Õááîâðpcü¾ÛlÚÝj\u001amE«§m¿;¬àyëÅ7õ£ªñîä¿I³\u001e»Ít¿º¢Õ}\u000bjLßo»¾_+Z=tíã7ÃÓ\u0013N¤&ô\u0011=0ªË¾¨ª¢ã9ãß0IîÔä\u0011þ|ëÆ¤ÙüEõiHëpÈNv·´ú÷\u001f~wÏÏsÓaß¬[ªô8ÓÑ+]6°\u0005s!³?²mót*.\u001cª×¡ío!{Ó2ÚöOL­d\n·§\u0003¹\u001dv\u0013Û¶î¸] })\u0004ã6ã²IË_\u001eñBô\u0014¢\u0007å\\Ùk\u001aDn½ØbÜÝçL\u0000[g9d?vÛfLïMª´!õÉFë\u0017Á3\u0007÷û\u0012K\u0016£¥;47}»Y²$f«\u001e¶¸qÉc¸ÄPÙ7Ó}ÌÌãð¡]­ãØî¦o¡\u0015*(\u0003QÖÍ~\u0015÷}\nÿ:t»s\u001c#\bêèê%Â\u0013áê }\u0007_=±5·\u0004DèÑ\u0000y\u0003«â¦÷Iô´\u0003\u0018-SXIñzX\u0004¸íd\u000bÉÜ3O\u001e?o§¾<Ôr®:Ü7ám7g\u000e*Kºú|P~ÓäëNXb\u0018¾¶áÇØIÀ@\"^ªO\u001c:\u000f®â\u0005I\u001a¥_f\t\u0005!±L\t\u001c¦XbèU p\u0016«Õ\u0004YZ½ýúï ·¾\u001dÆUj·öPµ\u0015Ñó^\töÀ_íöîc*ºÒÂ£ux;àúÜÉjSÑ+'¨\u0016×9uC¹Ê©\u001b¾³ CÊiÒÓêßÞh*\u001eSÀg\u0015ø£\u0012Ñ»ªïßýGE«¯\\Ðµ\u000bÜ\u000fãú\u0015¿<õáæ×v=±5\u0018üË9`*£ë.wA¦YæÌ\u0013~4sÓ7ë\u000f/©Å.¯%)\\@pw²k¶m\u0015ïE®iP:¹z¥4Íö\u0007^\u0006\u0007¿â,³ÿA A\u0015\u0013â$7¦hØ÷Íº½\u001fúÍI\u0013eJ®¹t\b*\u0013Ùc7Ýw»\u001cLËT{ÊêóµÂ\u0006èo\u0004¥H´1Lª¿üôõ\u000f§ÞÜ··\u0013ù;üZ¥\u0000\u0015~+\bg½~Iòºi§Ç¶Ý½`så.Ôu*ôib\u0013¿Wo¯%36îs\u001añÑ\u0019CJHÊ\u0017HóUÊOòæK©é³K3x \u0003\u0019\tã\u0018RV)GiI«÷ßýíý×?÷u:#f¨qx<¬|µhp$¹éõ\u0012Ümlèb\u0015þ]JÝ3YS\u001fÙ\rã¶éÉK\u0011ðwÆ\u000b5ßþ1Ëº£ÇÿE|_j¼þîôX\f.!»^9N¤ð0\u001dj¿ÐµÓ$ô¬VÚ°eºvÞ\u0013þ6Ô\u0012~:XÏT-ÅºVZÖÜÈÚzY\u000bî¨¹µ°vËâWV\u000bkÞ\n_\u000bKD¨­S¬¥!ñ\u000f'\\0YK­¬¹sö5÷úÅ\u0001,\u000ex«kç$1µ\u000b[¡km,áöµàà\u0007'3UkçY­ÛB?Q\u001b+ATVs\u0013jëY-&³|[l\u0004IaÝ\u0005\u000fW\u001bÂ\u001fX\u001d]s&jáá;}FÁ\u0002ÈÈEcD\u001d¬&ø(Iø:Nª¹rq8.\u001d¿Æ\u000fÀ:-\u0003rXë\b~D&PÅ'ýPÎÌek/\u001d±µpækY+Aâ\u001fØ©·ÄÕR­Y­|Ífµ3®\u0016BDJÃ¤oe\u001dB ®6>iÝ×»ô5ÔÆé_?µ\t/¿î\u0005¬yB\u0012µ3Dø_âÔ¨.n\u001d,ËD\u001df¢ö\\FÝF»Ú[Cð#î5Å@.rº\u0019&j\u000b³¹1=«½\u001d(a\u001bY Iú\u001c²0P\u0005Ð¢s:D²©%¼<Äyq\u0001Aâ\u0002\u001fAñ65\u0004Ú|\u0012+¶6DÈÚF×À\bÁ\u0002ád\u0006¸\b|'|Ô\r¯Í}Í¹?÷\fþþ\u0002àGho´Ke>¥E\u0003ûXÓ«æ£)6:{Æ¡ËbAT³\u0012ÇPÅ7T¡}£§¥*§Äã~ßëæÐ%Ä\u000fz°HÓðßlFö#íô\u001cvQ8ípÜM¥\u00192*$\u0003\"Th\u0003FLEÌðëøf\u0000Ôª\u0005£ã®[°±©\u0019³`ã\u0010³\u000b6þ¼íÇn=÷f&¤úgüÌÇrÄBáÃàÕ\u001c¨h\u0007è1­LµÒ\nZý*\u001d\u0016É¹´\u0019<¶{²mØ#Ü½Nãq·nò\u0005ØNì\u0002k¨èAÕ÷?üô×÷iÔZ~®Tó5Ýþ8½\u001clúãC;Ý\u0006o\"íOhîB:m³¨XïbI¾¹K·Éû\u0006\u000e­é!ÿÂ\t:_F-¦ÙrÆ^k7L¬éûá±Ã-¸ÖzØîû\u0016®<ooóÅ9*á¡éí\nô¤¿ÈIË¥ÙöÉ*¾,\u0014ÃÉjz\u0015ß&Í\u001d'n\u001cØ\u0018\u0006_rÐ¯\u0006R\u0015\u001fs¬¾²ß8é95<y\u0010\u0010§\u0017Wài9\u0004ÂUHï%2xÓ+ºw\u001c\u0002¯<Â³ypòy\u0013ÉsaçòÁÉè¿yHp*íN\u0018u¯o'vè>v»»ò`bxº\u0004SìûæùàõnìÊ.Ë\u0005ú\u0005I×z$\u001eù`X7uMIÒ¹o\u0001Ü4ë\u000fw±w» à\u000bdØ7ënz¾ â\u0012×¼ |ÿtI¶Íx×íðÇ¾Ùl¢Xé×.¬/Jv¼La\u0017ÿë%èÒéhÉ¥\u0016L4ÜY¶÷Påtmz¨È®6\f?«øT\u000e\fp%ãØnS²ÖËqFb]IxÙ\u0018^\u0006KNY2LB¸h±gJ`¯s|)f=dé£gÌ>Ëó5Î9\u0011\"ë\u0010å÷9\nzÈ?È\u001f>µ=¼'\u0016]ÜÅ+\u0005\bà¯Äq¨Åq\f\u000fÿçLµi×\u00030Y5çÝ:?gÚuÛ»Ï=M,ÏMf'Ì×\\¤Û\u001dÚ\tzMG§¢ç-¦Íç=BNzUq^ÖdÚ?Åþ?QH\u001c§ÌCN\u0010PHJóV?üøoþþ'¨-@ET\u0019\u0003\u000f%\u0012.Î%ýdý#TñmW}5=+\u0012ÓõÅÝ±\u0019ãfy\u000eÆ9±B}²:_¦ø¤\u0011xìgíC»\u000e8¥¯ÈôLL\u0018\u0005ÿ7\tUNÅWÅòÃgOíÊí×?«ùTó?ö>k~î¯8µ'i!ß+´ï\u0015ÿ\u0017Îò\u0002(æÐN+T%¼Ýaÿ®gª×}3vÓ3ëfÓ¾ôjGu}ý_ÿ\u0007\r\\³#ë9\u0000\u0000"
          }
        },
        "response": {
          "status": 204,
          "statusText": "No Content",
          "httpVersion": "HTTP/1.1",
          "headers": [
            {
              "name": "Access-Control-Allow-Credentials",
              "value": "true"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "https://app.listonic.com"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Date",
              "value": "Fri, 08 Aug 2025 12:10:05 GMT"
            },
            {
              "name": "Request-Context",
              "value": "appId=cid-v1:2f7711a9-b21e-4abe-a9d6-5b0ce5d18b64"
            },
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Vary",
              "value": "Origin"
            }
          ],
          "cookies": [],
          "content": {
            "size": 0,
            "mimeType": "text/plain",
            "compression": 0,
            "text": ""
          },
          "redirectURL": "",
          "headersSize": 280,
          "bodySize": 0,
          "_transferSize": 280,
          "_error": null,
          "_fetchedViaServiceWorker": false
        },
        "serverIPAddress": "4.153.129.168",
        "startedDateTime": "2025-08-08T12:10:04.440Z",
        "time": 143.87799985706806,
        "timings": {
          "blocked": 1.1470000215917826,
          "dns": -1,
          "ssl": -1,
          "connect": -1,
          "send": 0.21300000000000002,
          "wait": 142.35099996083974,
          "receive": 0.16699987463653088,
          "_blocked_queueing": 0.8590000215917826,
          "_workerStart": -1,
          "_workerReady": -1,
          "_workerFetchStart": -1,
          "_workerRespondWithSettled": -1
        }
      },
      {
        "_connectionId": "5252689",
        "_initiator": {
          "type": "script",
          "stack": {
            "callFrames": [
              {
                "functionName": "",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 15,
                "columnNumber": 155574
              },
              {
                "functionName": "",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 15,
                "columnNumber": 124022
              },
              {
                "functionName": "",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 1983,
                "columnNumber": 60530
              },
              {
                "functionName": "xhr",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 1983,
                "columnNumber": 57656
              },
              {
                "functionName": "eQ",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 1983,
                "columnNumber": 61697
              }
            ],
            "parent": {
              "description": "Promise.then",
              "callFrames": [
                {
                  "functionName": "_request",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 65469
                },
                {
                  "functionName": "request",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 64169
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 66059
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 39642
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1954,
                  "columnNumber": 32658
                },
                {
                  "functionName": "",
                  "scriptId": "1123",
                  "url": "https://app.listonic.com/_next/static/chunks/main-21032f6d6babc5f5.js",
                  "lineNumber": 0,
                  "columnNumber": 116070
                },
                {
                  "functionName": "",
                  "scriptId": "1123",
                  "url": "https://app.listonic.com/_next/static/chunks/main-21032f6d6babc5f5.js",
                  "lineNumber": 0,
                  "columnNumber": 116175
                },
                {
                  "functionName": "n",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 35470
                },
                {
                  "functionName": "s",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 35667
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 35726
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 35608
                },
                {
                  "functionName": "k",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1954,
                  "columnNumber": 32768
                },
                {
                  "functionName": "",
                  "scriptId": "1130",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/lists/%5BlistId%5D-15c980b7d9dfb98f.js",
                  "lineNumber": 0,
                  "columnNumber": 18677
                },
                {
                  "functionName": "",
                  "scriptId": "1123",
                  "url": "https://app.listonic.com/_next/static/chunks/main-21032f6d6babc5f5.js",
                  "lineNumber": 0,
                  "columnNumber": 116070
                },
                {
                  "functionName": "",
                  "scriptId": "1123",
                  "url": "https://app.listonic.com/_next/static/chunks/main-21032f6d6babc5f5.js",
                  "lineNumber": 0,
                  "columnNumber": 116175
                },
                {
                  "functionName": "n",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 35470
                },
                {
                  "functionName": "s",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 35667
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 35726
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 35608
                },
                {
                  "functionName": "I.onSubmit",
                  "scriptId": "1130",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/lists/%5BlistId%5D-15c980b7d9dfb98f.js",
                  "lineNumber": 0,
                  "columnNumber": 19115
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 10,
                  "columnNumber": 66183
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 10,
                  "columnNumber": 68468
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 10,
                  "columnNumber": 65477
                }
              ],
              "parent": {
                "description": "Promise.then",
                "callFrames": [
                  {
                    "functionName": "",
                    "scriptId": "1124",
                    "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                    "lineNumber": 10,
                    "columnNumber": 65380
                  },
                  {
                    "functionName": "",
                    "scriptId": "1124",
                    "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                    "lineNumber": 10,
                    "columnNumber": 68468
                  },
                  {
                    "functionName": "",
                    "scriptId": "1124",
                    "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                    "lineNumber": 10,
                    "columnNumber": 65867
                  },
                  {
                    "functionName": "",
                    "scriptId": "1124",
                    "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                    "lineNumber": 10,
                    "columnNumber": 68468
                  },
                  {
                    "functionName": "onBlur",
                    "scriptId": "1130",
                    "url": "https://app.listonic.com/_next/static/chunks/pages/lists/%5BlistId%5D-15c980b7d9dfb98f.js",
                    "lineNumber": 0,
                    "columnNumber": 20691
                  },
                  {
                    "functionName": "eA",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 16669
                  },
                  {
                    "functionName": "eq",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 16823
                  },
                  {
                    "functionName": "",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 35492
                  },
                  {
                    "functionName": "rg",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 35591
                  },
                  {
                    "functionName": "rv",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 36005
                  },
                  {
                    "functionName": "",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 41463
                  },
                  {
                    "functionName": "oq",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 104352
                  },
                  {
                    "functionName": "eD",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 15802
                  },
                  {
                    "functionName": "rx",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 37296
                  },
                  {
                    "functionName": "nB",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 22894
                  },
                  {
                    "functionName": "nA",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 22678
                  },
                  {
                    "functionName": "o",
                    "scriptId": "1124",
                    "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                    "lineNumber": 15,
                    "columnNumber": 148896
                  }
                ]
              }
            }
          }
        },
        "_priority": "High",
        "_resourceType": "xhr",
        "cache": {},
        "connection": "443",
        "pageref": "page_4",
        "request": {
          "method": "PATCH",
          "url": "https://api.listonic.com/api/lists/194157372/items/20423528450",
          "httpVersion": "HTTP/1.1",
          "headers": [
            {
              "name": "Accept",
              "value": "application/json, text/plain, */*"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate, br, zstd"
            },
            {
              "name": "Accept-Language",
              "value": "pl,en-US;q=0.9,en;q=0.8"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Content-Length",
              "value": "90"
            },
            {
              "name": "Content-Type",
              "value": "application/json"
            },
            {
              "name": "Culture",
              "value": "pl"
            },
            {
              "name": "DeviceId",
              "value": "61bb5344-507d-483a-8fad-285ad3d077ec"
            },
            {
              "name": "Host",
              "value": "api.listonic.com"
            },
            {
              "name": "LCode",
              "value": "1754654889827"
            },
            {
              "name": "Origin",
              "value": "https://app.listonic.com"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Referer",
              "value": "https://app.listonic.com/"
            },
            {
              "name": "Sec-Fetch-Dest",
              "value": "empty"
            },
            {
              "name": "Sec-Fetch-Mode",
              "value": "cors"
            },
            {
              "name": "Sec-Fetch-Site",
              "value": "same-site"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36"
            },
            {
              "name": "Version",
              "value": "web:4.0.0"
            },
            {
              "name": "sec-ch-ua",
              "value": "\"Not)A;Brand\";v=\"8\", \"Chromium\";v=\"138\", \"Google Chrome\";v=\"138\""
            },
            {
              "name": "sec-ch-ua-mobile",
              "value": "?0"
            },
            {
              "name": "sec-ch-ua-platform",
              "value": "\"Windows\""
            }
          ],
          "queryString": [],
          "cookies": [],
          "headersSize": 2089,
          "bodySize": 90,
          "postData": {
            "mimeType": "application/json",
            "text": "{\"id\":\"20423528450\",\"name\":\"serek typu almette\",\"amount\":\"\",\"price\":0,\"categoryId\":\"1907\"}"
          }
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "headers": [
            {
              "name": "Access-Control-Allow-Credentials",
              "value": "true"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "https://app.listonic.com"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Content-Length",
              "value": "0"
            },
            {
              "name": "Date",
              "value": "Fri, 08 Aug 2025 12:10:07 GMT"
            },
            {
              "name": "Item-Update-Date",
              "value": "1754655007"
            },
            {
              "name": "Request-Context",
              "value": "appId=cid-v1:020b87ab-ce6e-4ab0-9e8a-91721a69d633"
            },
            {
              "name": "Vary",
              "value": "Origin"
            }
          ],
          "cookies": [],
          "content": {
            "size": 0,
            "mimeType": "text/plain",
            "compression": 0,
            "text": ""
          },
          "redirectURL": "",
          "headersSize": 306,
          "bodySize": 0,
          "_transferSize": 306,
          "_error": null,
          "_fetchedViaServiceWorker": false
        },
        "serverIPAddress": "52.18.2.90",
        "startedDateTime": "2025-08-08T12:10:05.769Z",
        "time": 263.3909999858588,
        "timings": {
          "blocked": 98.00699995833635,
          "dns": -1,
          "ssl": -1,
          "connect": -1,
          "send": 0.20700000000000002,
          "wait": 165.0340001028031,
          "receive": 0.14299992471933365,
          "_blocked_queueing": 97.68899995833635,
          "_workerStart": -1,
          "_workerReady": -1,
          "_workerFetchStart": -1,
          "_workerRespondWithSettled": -1
        }
      },
      {
        "_connectionId": "5252689",
        "_initiator": {
          "type": "preflight",
          "url": "https://api.listonic.com/api/lists/194157372/items/20423528450",
          "requestId": "90312.1745"
        },
        "_priority": "High",
        "_resourceType": "preflight",
        "cache": {},
        "connection": "443",
        "pageref": "page_4",
        "request": {
          "method": "OPTIONS",
          "url": "https://api.listonic.com/api/lists/194157372/items/20423528450",
          "httpVersion": "HTTP/1.1",
          "headers": [
            {
              "name": "Accept",
              "value": "*/*"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate, br, zstd"
            },
            {
              "name": "Accept-Language",
              "value": "pl,en-US;q=0.9,en;q=0.8"
            },
            {
              "name": "Access-Control-Request-Headers",
              "value": "authorization,content-type,culture,deviceid,lcode,version"
            },
            {
              "name": "Access-Control-Request-Method",
              "value": "PATCH"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Host",
              "value": "api.listonic.com"
            },
            {
              "name": "Origin",
              "value": "https://app.listonic.com"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Referer",
              "value": "https://app.listonic.com/"
            },
            {
              "name": "Sec-Fetch-Dest",
              "value": "empty"
            },
            {
              "name": "Sec-Fetch-Mode",
              "value": "cors"
            },
            {
              "name": "Sec-Fetch-Site",
              "value": "same-site"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36"
            }
          ],
          "queryString": [],
          "cookies": [],
          "headersSize": 641,
          "bodySize": 0
        },
        "response": {
          "status": 204,
          "statusText": "No Content",
          "httpVersion": "HTTP/1.1",
          "headers": [
            {
              "name": "Access-Control-Allow-Credentials",
              "value": "true"
            },
            {
              "name": "Access-Control-Allow-Headers",
              "value": "authorization,content-type,culture,deviceid,lcode,version"
            },
            {
              "name": "Access-Control-Allow-Methods",
              "value": "PATCH"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "https://app.listonic.com"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Date",
              "value": "Fri, 08 Aug 2025 12:10:07 GMT"
            },
            {
              "name": "Request-Context",
              "value": "appId=cid-v1:020b87ab-ce6e-4ab0-9e8a-91721a69d633"
            },
            {
              "name": "Vary",
              "value": "Origin"
            }
          ],
          "cookies": [],
          "content": {
            "size": 0,
            "mimeType": "x-unknown",
            "compression": 391
          },
          "redirectURL": "",
          "headersSize": 391,
          "bodySize": -391,
          "_transferSize": 0,
          "_error": null,
          "_fetchedViaServiceWorker": false
        },
        "serverIPAddress": "52.18.2.90",
        "startedDateTime": "2025-08-08T12:10:05.796Z",
        "time": 80.4710001373887,
        "timings": {
          "blocked": -0.5760000000000001,
          "dns": -1,
          "ssl": -1,
          "connect": -1,
          "send": 0.14499999999999996,
          "wait": 79.94500003023445,
          "receive": 0.38100010715425014,
          "_blocked_queueing": -1,
          "_workerStart": -1,
          "_workerReady": -1,
          "_workerFetchStart": -1,
          "_workerRespondWithSettled": -1
        }
      },
      {
        "_connectionId": "5255371",
        "_initiator": {
          "type": "script",
          "stack": {
            "callFrames": [
              {
                "functionName": "",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 15,
                "columnNumber": 155574
              },
              {
                "functionName": "",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 15,
                "columnNumber": 124022
              },
              {
                "functionName": "X",
                "scriptId": "1165",
                "url": "https://ced.sascdn.com/tag/2850/smart.js",
                "lineNumber": 3,
                "columnNumber": 16829
              },
              {
                "functionName": "",
                "scriptId": "1165",
                "url": "https://ced.sascdn.com/tag/2850/smart.js",
                "lineNumber": 3,
                "columnNumber": 2924
              },
              {
                "functionName": "",
                "scriptId": "1165",
                "url": "https://ced.sascdn.com/tag/2850/smart.js",
                "lineNumber": 3,
                "columnNumber": 2986
              },
              {
                "functionName": "addListener",
                "scriptId": "1165",
                "url": "https://ced.sascdn.com/tag/2850/smart.js",
                "lineNumber": 3,
                "columnNumber": 817
              },
              {
                "functionName": "O",
                "scriptId": "1165",
                "url": "https://ced.sascdn.com/tag/2850/smart.js",
                "lineNumber": 3,
                "columnNumber": 2844
              },
              {
                "functionName": "",
                "scriptId": "1165",
                "url": "https://ced.sascdn.com/tag/2850/smart.js",
                "lineNumber": 3,
                "columnNumber": 1735
              },
              {
                "functionName": "addListener",
                "scriptId": "1165",
                "url": "https://ced.sascdn.com/tag/2850/smart.js",
                "lineNumber": 3,
                "columnNumber": 817
              },
              {
                "functionName": "",
                "scriptId": "1165",
                "url": "https://ced.sascdn.com/tag/2850/smart.js",
                "lineNumber": 3,
                "columnNumber": 1711
              },
              {
                "functionName": "",
                "scriptId": "1165",
                "url": "https://ced.sascdn.com/tag/2850/smart.js",
                "lineNumber": 3,
                "columnNumber": 21319
              },
              {
                "functionName": "executeHandlers",
                "scriptId": "1165",
                "url": "https://ced.sascdn.com/tag/2850/smart.js",
                "lineNumber": 3,
                "columnNumber": 21307
              },
              {
                "functionName": "fire",
                "scriptId": "1165",
                "url": "https://ced.sascdn.com/tag/2850/smart.js",
                "lineNumber": 3,
                "columnNumber": 22302
              },
              {
                "functionName": "s",
                "scriptId": "1165",
                "url": "https://ced.sascdn.com/tag/2850/smart.js",
                "lineNumber": 3,
                "columnNumber": 12421
              },
              {
                "functionName": "a.refresh",
                "scriptId": "1165",
                "url": "https://ced.sascdn.com/tag/2850/smart.js",
                "lineNumber": 3,
                "columnNumber": 12552
              },
              {
                "functionName": "",
                "scriptId": "1129",
                "url": "https://app.listonic.com/_next/static/chunks/988-b41f8370d04d6fe9.js",
                "lineNumber": 0,
                "columnNumber": 15451
              },
              {
                "functionName": "executeCmd",
                "scriptId": "1165",
                "url": "https://ced.sascdn.com/tag/2850/smart.js",
                "lineNumber": 3,
                "columnNumber": 18689
              },
              {
                "functionName": "",
                "scriptId": "1165",
                "url": "https://ced.sascdn.com/tag/2850/smart.js",
                "lineNumber": 3,
                "columnNumber": 18572
              },
              {
                "functionName": "e.push",
                "scriptId": "1165",
                "url": "https://ced.sascdn.com/tag/2850/smart.js",
                "lineNumber": 3,
                "columnNumber": 66174
              },
              {
                "functionName": "d",
                "scriptId": "1129",
                "url": "https://app.listonic.com/_next/static/chunks/988-b41f8370d04d6fe9.js",
                "lineNumber": 0,
                "columnNumber": 15424
              },
              {
                "functionName": "",
                "scriptId": "1129",
                "url": "https://app.listonic.com/_next/static/chunks/988-b41f8370d04d6fe9.js",
                "lineNumber": 0,
                "columnNumber": 15572
              },
              {
                "functionName": "o",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 15,
                "columnNumber": 148896
              }
            ],
            "parent": {
              "description": "setInterval",
              "callFrames": [
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 15,
                  "columnNumber": 154997
                },
                {
                  "functionName": "r",
                  "scriptId": "1129",
                  "url": "https://app.listonic.com/_next/static/chunks/988-b41f8370d04d6fe9.js",
                  "lineNumber": 0,
                  "columnNumber": 15542
                },
                {
                  "functionName": "",
                  "scriptId": "1129",
                  "url": "https://app.listonic.com/_next/static/chunks/988-b41f8370d04d6fe9.js",
                  "lineNumber": 0,
                  "columnNumber": 16197
                },
                {
                  "functionName": "u2",
                  "scriptId": "1122",
                  "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                  "lineNumber": 8,
                  "columnNumber": 92097
                },
                {
                  "functionName": "o6",
                  "scriptId": "1122",
                  "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                  "lineNumber": 8,
                  "columnNumber": 113426
                },
                {
                  "functionName": "",
                  "scriptId": "1122",
                  "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                  "lineNumber": 8,
                  "columnNumber": 108346
                },
                {
                  "functionName": "x",
                  "scriptId": "1122",
                  "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                  "lineNumber": 32,
                  "columnNumber": 1373
                },
                {
                  "functionName": "T",
                  "scriptId": "1122",
                  "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                  "lineNumber": 32,
                  "columnNumber": 1903
                }
              ],
              "parentId": {
                "id": "1987",
                "debuggerId": "-7857796025269970286.5938273183264037115"
              }
            }
          }
        },
        "_priority": "High",
        "_resourceType": "xhr",
        "cache": {},
        "connection": "443",
        "pageref": "page_4",
        "request": {
          "method": "POST",
          "url": "https://www14.smartadserver.com/genericpost",
          "httpVersion": "http/2.0",
          "headers": [
            {
              "name": ":authority",
              "value": "www14.smartadserver.com"
            },
            {
              "name": ":method",
              "value": "POST"
            },
            {
              "name": ":path",
              "value": "/genericpost"
            },
            {
              "name": ":scheme",
              "value": "https"
            },
            {
              "name": "accept",
              "value": "*/*"
            },
            {
              "name": "accept-encoding",
              "value": "gzip, deflate, br, zstd"
            },
            {
              "name": "accept-language",
              "value": "pl,en-US;q=0.9,en;q=0.8"
            },
            {
              "name": "cache-control",
              "value": "no-cache"
            },
            {
              "name": "content-length",
              "value": "1330"
            },
            {
              "name": "content-type",
              "value": "application/javascript"
            },
            {
              "name": "origin",
              "value": "https://app.listonic.com"
            },
            {
              "name": "pragma",
              "value": "no-cache"
            },
            {
              "name": "priority",
              "value": "u=1, i"
            },
            {
              "name": "referer",
              "value": "https://app.listonic.com/"
            },
            {
              "name": "sec-ch-ua",
              "value": "\"Not)A;Brand\";v=\"8\", \"Chromium\";v=\"138\", \"Google Chrome\";v=\"138\""
            },
            {
              "name": "sec-ch-ua-mobile",
              "value": "?0"
            },
            {
              "name": "sec-ch-ua-platform",
              "value": "\"Windows\""
            },
            {
              "name": "sec-fetch-dest",
              "value": "empty"
            },
            {
              "name": "sec-fetch-mode",
              "value": "cors"
            },
            {
              "name": "sec-fetch-site",
              "value": "cross-site"
            },
            {
              "name": "sec-fetch-storage-access",
              "value": "active"
            },
            {
              "name": "traceparent",
              "value": "00-825516ed1611a21f399c32ed57da8723-4cf2c5278e74a278-00"
            },
            {
              "name": "tracestate",
              "value": "eqtv-source=smartjs"
            },
            {
              "name": "user-agent",
              "value": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36"
            }
          ],
          "queryString": [],
          "cookies": [],
          "headersSize": -1,
          "bodySize": 1330,
          "postData": {
            "mimeType": "application/javascript",
            "text": "{\"timestamp\":3297217570,\"networkId\":2850,\"siteId\":576421,\"pageId\":1744569,\"master\":\"s\",\"noAdCallback\":\"sas.noad\",\"pageUrl\":\"https://app.listonic.com/pl/lists/194157372\",\"screen\":{\"height\":1440,\"width\":5120},\"uid\":0,\"appName\":\"\",\"bundleId\":\"\",\"schain\":\"\",\"ads\":[{\"formatId\":124065,\"tagId\":\"sas_124065\",\"target\":\"\",\"headerBidding\":{},\"isLazy\":false,\"isAdRefresh\":1}],\"gdpr_consent\":\"CP8cOkAQL4_0AAHABBENBZFsAP_gAEPgAB5YKwtX_H__bW9r8X73aft0eY1P99j77sQxBhfJE-4FzLvW_JwXx2ExNA36tqIKmRIEu3bBIQNlHJDUTVigaogVryDMak2coTNKJ6BkiFMRO2dYCF5vm4tj-QKY5vr993dx2D-t_dv83dzyz41Hn3a5_2e0WJCdA5-tDfv9bROb-9IPd_58v4v8_F_rE2_eT1l_tevp7D9-ft8__XW_9_fff_9Pn_-uB_-_X_vf_H36Cr4BJhoVEAfYEhIQaBhFAgBUFYQEUCAIAAEgaICAEwYFOwMAF1hIgBACgAGCAEAAIMgAQAAAQAIRABIAUCAACAQKAAMACAYCAAgYAAQAWAgEAAIDoGKYEECgWACRmRUKYEIUCQQEtlQgkAQIK4QhFngEQCImCgAAAAAKwABAWCwOJJASoSCBLiDaAAAgAQCCECoQScmAAYEzZag8GTaMrTAMHzBIhpgGQBEEZCQaAAAA.f_wACHwAAAAA\",\"cmpvalid\":1,\"eids\":[{\"source\":\"id5-sync.com\",\"uids\":[{\"id\":\"ID5*rEQUC-R-gHmjcsr5mziRCcQVWnlW9dzjyMCP1blVXvs7EWuGG0XbpMAH0CnpWSbbOyMhw4W8Wm41VqwaUC4VoDtFvF_9k2En22sSLyGua0Q86L6kdl-ZTJZFfgiYP0I1OxmHl1lwasC4cOQhYusxNzsqytzXqrPY5I8QWbL0vTI7DVWpS35BrGuao8X1ZxJ-Ox10FE0VrO2PnMUV0Kd_aTsuYWg5mUeHMjzoSx5OvAI\",\"atype\":1,\"ext\":{\"linkType\":2,\"pba\":\"garo08OiY/kCjxswFDj4c4voCDG0rkWkUqpq/rg31qzguGm78Lc/DxSF7trxamb6\"}}]}],\"partnerExtUids\":{}}"
          }
        },
        "response": {
          "status": 200,
          "statusText": "",
          "httpVersion": "http/2.0",
          "headers": [
            {
              "name": "access-control-allow-credentials",
              "value": "true"
            },
            {
              "name": "access-control-allow-origin",
              "value": "https://app.listonic.com"
            },
            {
              "name": "cache-control",
              "value": "no-cache,no-store"
            },
            {
              "name": "content-encoding",
              "value": "br"
            },
            {
              "name": "content-type",
              "value": "application/javascript; charset=UTF-8"
            },
            {
              "name": "date",
              "value": "Fri, 08 Aug 2025 12:10:12 GMT"
            },
            {
              "name": "p3p",
              "value": "CP=\"BUS CUR CONo FIN IVDo ONL OUR PHY SAMo TELo\""
            },
            {
              "name": "pragma",
              "value": "no-cache"
            },
            {
              "name": "vary",
              "value": "Accept-Encoding"
            },
            {
              "name": "vary",
              "value": "Origin"
            }
          ],
          "cookies": [],
          "content": {
            "size": 23,
            "mimeType": "application/javascript",
            "text": "sas.noad(\"sas_124065\");"
          },
          "redirectURL": "",
          "headersSize": -1,
          "bodySize": -1,
          "_transferSize": 577,
          "_error": null,
          "_fetchedViaServiceWorker": false
        },
        "serverIPAddress": "91.134.110.128",
        "startedDateTime": "2025-08-08T12:10:10.846Z",
        "time": 545.0399999667853,
        "timings": {
          "blocked": 141.27100004827977,
          "dns": 0.0040000000000000036,
          "ssl": 56.276,
          "connect": 108.992,
          "send": 0.2219999999999942,
          "wait": 293.8680000729114,
          "receive": 0.6829998455941677,
          "_blocked_queueing": 141.09000004827976,
          "_workerStart": -1,
          "_workerReady": -1,
          "_workerFetchStart": -1,
          "_workerRespondWithSettled": -1
        }
      },
      {
        "_connectionId": "5255358",
        "_initiator": {
          "type": "preflight",
          "url": "https://www14.smartadserver.com/genericpost",
          "requestId": "90312.1746"
        },
        "_priority": "High",
        "_resourceType": "preflight",
        "cache": {},
        "connection": "443",
        "pageref": "page_4",
        "request": {
          "method": "OPTIONS",
          "url": "https://www14.smartadserver.com/genericpost",
          "httpVersion": "http/2.0",
          "headers": [
            {
              "name": ":authority",
              "value": "www14.smartadserver.com"
            },
            {
              "name": ":method",
              "value": "OPTIONS"
            },
            {
              "name": ":path",
              "value": "/genericpost"
            },
            {
              "name": ":scheme",
              "value": "https"
            },
            {
              "name": "accept",
              "value": "*/*"
            },
            {
              "name": "accept-encoding",
              "value": "gzip, deflate, br, zstd"
            },
            {
              "name": "accept-language",
              "value": "pl,en-US;q=0.9,en;q=0.8"
            },
            {
              "name": "access-control-request-headers",
              "value": "content-type,traceparent,tracestate"
            },
            {
              "name": "access-control-request-method",
              "value": "POST"
            },
            {
              "name": "cache-control",
              "value": "no-cache"
            },
            {
              "name": "origin",
              "value": "https://app.listonic.com"
            },
            {
              "name": "pragma",
              "value": "no-cache"
            },
            {
              "name": "priority",
              "value": "u=1, i"
            },
            {
              "name": "referer",
              "value": "https://app.listonic.com/"
            },
            {
              "name": "sec-fetch-dest",
              "value": "empty"
            },
            {
              "name": "sec-fetch-mode",
              "value": "cors"
            },
            {
              "name": "sec-fetch-site",
              "value": "cross-site"
            },
            {
              "name": "user-agent",
              "value": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36"
            }
          ],
          "queryString": [],
          "cookies": [],
          "headersSize": -1,
          "bodySize": 0
        },
        "response": {
          "status": 204,
          "statusText": "",
          "httpVersion": "http/2.0",
          "headers": [
            {
              "name": "access-control-allow-credentials",
              "value": "true"
            },
            {
              "name": "access-control-allow-headers",
              "value": "content-type,traceparent,tracestate"
            },
            {
              "name": "access-control-allow-methods",
              "value": "GET,HEAD,POST"
            },
            {
              "name": "access-control-allow-origin",
              "value": "https://app.listonic.com"
            },
            {
              "name": "date",
              "value": "Fri, 08 Aug 2025 12:10:11 GMT"
            },
            {
              "name": "vary",
              "value": "Origin"
            }
          ],
          "cookies": [],
          "content": {
            "size": 0,
            "mimeType": "x-unknown"
          },
          "redirectURL": "",
          "headersSize": -1,
          "bodySize": -1,
          "_transferSize": 0,
          "_error": null,
          "_fetchedViaServiceWorker": false
        },
        "serverIPAddress": "91.134.110.128",
        "startedDateTime": "2025-08-08T12:10:10.847Z",
        "time": 140.0369999382198,
        "timings": {
          "blocked": -0.5660000000000001,
          "dns": 0.007000000000000006,
          "ssl": 46.00899999999999,
          "connect": 93.923,
          "send": 0.17100000000000648,
          "wait": 45.6750000463128,
          "receive": 0.2609998919069767,
          "_blocked_queueing": -1,
          "_workerStart": -1,
          "_workerReady": -1,
          "_workerFetchStart": -1,
          "_workerRespondWithSettled": -1
        }
      },
      {
        "_connectionId": "5252689",
        "_initiator": {
          "type": "script",
          "stack": {
            "callFrames": [
              {
                "functionName": "",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 15,
                "columnNumber": 155574
              },
              {
                "functionName": "",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 15,
                "columnNumber": 124022
              },
              {
                "functionName": "",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 1983,
                "columnNumber": 60530
              },
              {
                "functionName": "xhr",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 1983,
                "columnNumber": 57656
              },
              {
                "functionName": "eQ",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 1983,
                "columnNumber": 61697
              }
            ],
            "parent": {
              "description": "Promise.then",
              "callFrames": [
                {
                  "functionName": "_request",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 65469
                },
                {
                  "functionName": "request",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 64169
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 66059
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 39642
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1954,
                  "columnNumber": 32658
                },
                {
                  "functionName": "",
                  "scriptId": "1123",
                  "url": "https://app.listonic.com/_next/static/chunks/main-21032f6d6babc5f5.js",
                  "lineNumber": 0,
                  "columnNumber": 116070
                },
                {
                  "functionName": "",
                  "scriptId": "1123",
                  "url": "https://app.listonic.com/_next/static/chunks/main-21032f6d6babc5f5.js",
                  "lineNumber": 0,
                  "columnNumber": 116175
                },
                {
                  "functionName": "n",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 35470
                },
                {
                  "functionName": "s",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 35667
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 35726
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 35608
                },
                {
                  "functionName": "k",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1954,
                  "columnNumber": 32768
                },
                {
                  "functionName": "",
                  "scriptId": "1130",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/lists/%5BlistId%5D-15c980b7d9dfb98f.js",
                  "lineNumber": 0,
                  "columnNumber": 18677
                },
                {
                  "functionName": "",
                  "scriptId": "1123",
                  "url": "https://app.listonic.com/_next/static/chunks/main-21032f6d6babc5f5.js",
                  "lineNumber": 0,
                  "columnNumber": 116070
                },
                {
                  "functionName": "",
                  "scriptId": "1123",
                  "url": "https://app.listonic.com/_next/static/chunks/main-21032f6d6babc5f5.js",
                  "lineNumber": 0,
                  "columnNumber": 116175
                },
                {
                  "functionName": "n",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 35470
                },
                {
                  "functionName": "s",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 35667
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 35726
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 35608
                },
                {
                  "functionName": "I.onSubmit",
                  "scriptId": "1130",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/lists/%5BlistId%5D-15c980b7d9dfb98f.js",
                  "lineNumber": 0,
                  "columnNumber": 19115
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 10,
                  "columnNumber": 66183
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 10,
                  "columnNumber": 68468
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 10,
                  "columnNumber": 65477
                }
              ],
              "parent": {
                "description": "Promise.then",
                "callFrames": [
                  {
                    "functionName": "",
                    "scriptId": "1124",
                    "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                    "lineNumber": 10,
                    "columnNumber": 65380
                  },
                  {
                    "functionName": "",
                    "scriptId": "1124",
                    "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                    "lineNumber": 10,
                    "columnNumber": 68468
                  },
                  {
                    "functionName": "",
                    "scriptId": "1124",
                    "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                    "lineNumber": 10,
                    "columnNumber": 65867
                  },
                  {
                    "functionName": "",
                    "scriptId": "1124",
                    "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                    "lineNumber": 10,
                    "columnNumber": 68468
                  },
                  {
                    "functionName": "onBlur",
                    "scriptId": "1130",
                    "url": "https://app.listonic.com/_next/static/chunks/pages/lists/%5BlistId%5D-15c980b7d9dfb98f.js",
                    "lineNumber": 0,
                    "columnNumber": 20691
                  },
                  {
                    "functionName": "eA",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 16669
                  },
                  {
                    "functionName": "eq",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 16823
                  },
                  {
                    "functionName": "",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 35492
                  },
                  {
                    "functionName": "rg",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 35591
                  },
                  {
                    "functionName": "rv",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 36005
                  },
                  {
                    "functionName": "",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 41463
                  },
                  {
                    "functionName": "oq",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 104352
                  },
                  {
                    "functionName": "eD",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 15802
                  },
                  {
                    "functionName": "rx",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 37296
                  },
                  {
                    "functionName": "nB",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 22894
                  },
                  {
                    "functionName": "nA",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 22678
                  },
                  {
                    "functionName": "o",
                    "scriptId": "1124",
                    "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                    "lineNumber": 15,
                    "columnNumber": 148896
                  }
                ]
              }
            }
          }
        },
        "_priority": "High",
        "_resourceType": "xhr",
        "cache": {},
        "connection": "443",
        "pageref": "page_4",
        "request": {
          "method": "PATCH",
          "url": "https://api.listonic.com/api/lists/194157372/items/20423528450",
          "httpVersion": "HTTP/1.1",
          "headers": [
            {
              "name": "Accept",
              "value": "application/json, text/plain, */*"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate, br, zstd"
            },
            {
              "name": "Accept-Language",
              "value": "pl,en-US;q=0.9,en;q=0.8"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Content-Length",
              "value": "92"
            },
            {
              "name": "Content-Type",
              "value": "application/json"
            },
            {
              "name": "Culture",
              "value": "pl"
            },
            {
              "name": "DeviceId",
              "value": "61bb5344-507d-483a-8fad-285ad3d077ec"
            },
            {
              "name": "Host",
              "value": "api.listonic.com"
            },
            {
              "name": "LCode",
              "value": "1754654889827"
            },
            {
              "name": "Origin",
              "value": "https://app.listonic.com"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Referer",
              "value": "https://app.listonic.com/"
            },
            {
              "name": "Sec-Fetch-Dest",
              "value": "empty"
            },
            {
              "name": "Sec-Fetch-Mode",
              "value": "cors"
            },
            {
              "name": "Sec-Fetch-Site",
              "value": "same-site"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36"
            },
            {
              "name": "Version",
              "value": "web:4.0.0"
            },
            {
              "name": "sec-ch-ua",
              "value": "\"Not)A;Brand\";v=\"8\", \"Chromium\";v=\"138\", \"Google Chrome\";v=\"138\""
            },
            {
              "name": "sec-ch-ua-mobile",
              "value": "?0"
            },
            {
              "name": "sec-ch-ua-platform",
              "value": "\"Windows\""
            }
          ],
          "queryString": [],
          "cookies": [],
          "headersSize": 2089,
          "bodySize": 92,
          "postData": {
            "mimeType": "application/json",
            "text": "{\"id\":\"20423528450\",\"name\":\"serek typu almette\",\"amount\":\"40\",\"price\":0,\"categoryId\":\"1907\"}"
          }
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "headers": [
            {
              "name": "Access-Control-Allow-Credentials",
              "value": "true"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "https://app.listonic.com"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Content-Length",
              "value": "0"
            },
            {
              "name": "Date",
              "value": "Fri, 08 Aug 2025 12:10:13 GMT"
            },
            {
              "name": "Item-Update-Date",
              "value": "1754655013"
            },
            {
              "name": "Request-Context",
              "value": "appId=cid-v1:020b87ab-ce6e-4ab0-9e8a-91721a69d633"
            },
            {
              "name": "Vary",
              "value": "Origin"
            }
          ],
          "cookies": [],
          "content": {
            "size": 0,
            "mimeType": "text/plain",
            "compression": 0,
            "text": ""
          },
          "redirectURL": "",
          "headersSize": 306,
          "bodySize": 0,
          "_transferSize": 306,
          "_error": null,
          "_fetchedViaServiceWorker": false
        },
        "serverIPAddress": "52.18.2.90",
        "startedDateTime": "2025-08-08T12:10:12.491Z",
        "time": 228.27699990011752,
        "timings": {
          "blocked": 73.6619999307394,
          "dns": -1,
          "ssl": -1,
          "connect": -1,
          "send": 0.136,
          "wait": 154.34300009796024,
          "receive": 0.13599987141788006,
          "_blocked_queueing": 73.4069999307394,
          "_workerStart": -1,
          "_workerReady": -1,
          "_workerFetchStart": -1,
          "_workerRespondWithSettled": -1
        }
      },
      {
        "_connectionId": "5252689",
        "_initiator": {
          "type": "preflight",
          "url": "https://api.listonic.com/api/lists/194157372/items/20423528450",
          "requestId": "90312.1747"
        },
        "_priority": "High",
        "_resourceType": "preflight",
        "cache": {},
        "connection": "443",
        "pageref": "page_4",
        "request": {
          "method": "OPTIONS",
          "url": "https://api.listonic.com/api/lists/194157372/items/20423528450",
          "httpVersion": "HTTP/1.1",
          "headers": [
            {
              "name": "Accept",
              "value": "*/*"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate, br, zstd"
            },
            {
              "name": "Accept-Language",
              "value": "pl,en-US;q=0.9,en;q=0.8"
            },
            {
              "name": "Access-Control-Request-Headers",
              "value": "authorization,content-type,culture,deviceid,lcode,version"
            },
            {
              "name": "Access-Control-Request-Method",
              "value": "PATCH"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Host",
              "value": "api.listonic.com"
            },
            {
              "name": "Origin",
              "value": "https://app.listonic.com"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Referer",
              "value": "https://app.listonic.com/"
            },
            {
              "name": "Sec-Fetch-Dest",
              "value": "empty"
            },
            {
              "name": "Sec-Fetch-Mode",
              "value": "cors"
            },
            {
              "name": "Sec-Fetch-Site",
              "value": "same-site"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36"
            }
          ],
          "queryString": [],
          "cookies": [],
          "headersSize": 641,
          "bodySize": 0
        },
        "response": {
          "status": 204,
          "statusText": "No Content",
          "httpVersion": "HTTP/1.1",
          "headers": [
            {
              "name": "Access-Control-Allow-Credentials",
              "value": "true"
            },
            {
              "name": "Access-Control-Allow-Headers",
              "value": "authorization,content-type,culture,deviceid,lcode,version"
            },
            {
              "name": "Access-Control-Allow-Methods",
              "value": "PATCH"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "https://app.listonic.com"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Date",
              "value": "Fri, 08 Aug 2025 12:10:13 GMT"
            },
            {
              "name": "Request-Context",
              "value": "appId=cid-v1:020b87ab-ce6e-4ab0-9e8a-91721a69d633"
            },
            {
              "name": "Vary",
              "value": "Origin"
            }
          ],
          "cookies": [],
          "content": {
            "size": 0,
            "mimeType": "x-unknown",
            "compression": 391
          },
          "redirectURL": "",
          "headersSize": 391,
          "bodySize": -391,
          "_transferSize": 0,
          "_error": null,
          "_fetchedViaServiceWorker": false
        },
        "serverIPAddress": "52.18.2.90",
        "startedDateTime": "2025-08-08T12:10:12.492Z",
        "time": 72.4939998871684,
        "timings": {
          "blocked": -0.796,
          "dns": -1,
          "ssl": -1,
          "connect": -1,
          "send": 0.16,
          "wait": 72.1009999756366,
          "receive": 0.232999911531806,
          "_blocked_queueing": -1,
          "_workerStart": -1,
          "_workerReady": -1,
          "_workerFetchStart": -1,
          "_workerRespondWithSettled": -1
        }
      },
      {
        "_connectionId": "5255072",
        "_initiator": {
          "type": "script",
          "stack": {
            "callFrames": [
              {
                "functionName": "",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 15,
                "columnNumber": 155574
              },
              {
                "functionName": "",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 15,
                "columnNumber": 124022
              },
              {
                "functionName": "qr",
                "scriptId": "1154",
                "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                "lineNumber": 1,
                "columnNumber": 55225
              },
              {
                "functionName": "",
                "scriptId": "1154",
                "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                "lineNumber": 1,
                "columnNumber": 54410
              },
              {
                "functionName": "",
                "scriptId": "1154",
                "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                "lineNumber": 1,
                "columnNumber": 9507
              },
              {
                "functionName": "",
                "scriptId": "1154",
                "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                "lineNumber": 1,
                "columnNumber": 9612
              },
              {
                "functionName": "o",
                "scriptId": "1154",
                "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                "lineNumber": 1,
                "columnNumber": 8329
              }
            ],
            "parent": {
              "description": "Promise.then",
              "callFrames": [
                {
                  "functionName": "c",
                  "scriptId": "1154",
                  "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                  "lineNumber": 1,
                  "columnNumber": 8494
                },
                {
                  "functionName": "",
                  "scriptId": "1154",
                  "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                  "lineNumber": 1,
                  "columnNumber": 8504
                },
                {
                  "functionName": "dt",
                  "scriptId": "1154",
                  "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                  "lineNumber": 1,
                  "columnNumber": 8272
                },
                {
                  "functionName": "Hr",
                  "scriptId": "1154",
                  "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                  "lineNumber": 1,
                  "columnNumber": 53536
                },
                {
                  "functionName": "",
                  "scriptId": "1154",
                  "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                  "lineNumber": 1,
                  "columnNumber": 69018
                },
                {
                  "functionName": "o",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 15,
                  "columnNumber": 148896
                }
              ],
              "parent": {
                "description": "setTimeout",
                "callFrames": [
                  {
                    "functionName": "",
                    "scriptId": "1124",
                    "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                    "lineNumber": 15,
                    "columnNumber": 154997
                  },
                  {
                    "functionName": "Q",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 7424
                  },
                  {
                    "functionName": "Wr",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 53393
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 48564
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 9507
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 9612
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 8527
                  },
                  {
                    "functionName": "dt",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 8272
                  },
                  {
                    "functionName": "mr",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 48088
                  },
                  {
                    "functionName": "ui",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 57504
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 57445
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 9507
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 9612
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 8527
                  },
                  {
                    "functionName": "dt",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 8272
                  },
                  {
                    "functionName": "oi",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 57204
                  },
                  {
                    "functionName": "ke",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 18980
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 69018
                  },
                  {
                    "functionName": "o",
                    "scriptId": "1124",
                    "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                    "lineNumber": 15,
                    "columnNumber": 148896
                  }
                ],
                "parent": {
                  "description": "setTimeout",
                  "callFrames": [
                    {
                      "functionName": "",
                      "scriptId": "1124",
                      "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                      "lineNumber": 15,
                      "columnNumber": 154997
                    },
                    {
                      "functionName": "Q",
                      "scriptId": "1154",
                      "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                      "lineNumber": 1,
                      "columnNumber": 7424
                    },
                    {
                      "functionName": "we",
                      "scriptId": "1154",
                      "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                      "lineNumber": 1,
                      "columnNumber": 18909
                    },
                    {
                      "functionName": "ye",
                      "scriptId": "1154",
                      "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                      "lineNumber": 1,
                      "columnNumber": 17872
                    },
                    {
                      "functionName": "",
                      "scriptId": "1154",
                      "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                      "lineNumber": 1,
                      "columnNumber": 69018
                    },
                    {
                      "functionName": "o",
                      "scriptId": "1124",
                      "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                      "lineNumber": 15,
                      "columnNumber": 148896
                    }
                  ]
                }
              }
            }
          }
        },
        "_priority": "High",
        "_resourceType": "xhr",
        "cache": {},
        "connection": "443",
        "pageref": "page_4",
        "request": {
          "method": "POST",
          "url": "https://b.clarity.ms/collect",
          "httpVersion": "HTTP/1.1",
          "headers": [
            {
              "name": "Accept",
              "value": "application/x-clarity-gzip"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate, br, zstd"
            },
            {
              "name": "Accept-Language",
              "value": "pl,en-US;q=0.9,en;q=0.8"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Content-Length",
              "value": "1336"
            },
            {
              "name": "Host",
              "value": "b.clarity.ms"
            },
            {
              "name": "Origin",
              "value": "https://app.listonic.com"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Referer",
              "value": "https://app.listonic.com/"
            },
            {
              "name": "Sec-Fetch-Dest",
              "value": "empty"
            },
            {
              "name": "Sec-Fetch-Mode",
              "value": "cors"
            },
            {
              "name": "Sec-Fetch-Site",
              "value": "cross-site"
            },
            {
              "name": "Sec-Fetch-Storage-Access",
              "value": "active"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36"
            },
            {
              "name": "sec-ch-ua",
              "value": "\"Not)A;Brand\";v=\"8\", \"Chromium\";v=\"138\", \"Google Chrome\";v=\"138\""
            },
            {
              "name": "sec-ch-ua-mobile",
              "value": "?0"
            },
            {
              "name": "sec-ch-ua-platform",
              "value": "\"Windows\""
            }
          ],
          "queryString": [],
          "cookies": [],
          "headersSize": 732,
          "bodySize": 1993,
          "postData": {
            "mimeType": "",
            "text": "\u001f\b\u0000\u0000\u0000\u0000\u0000\u0000\níËnÛF\u0014_EeqhÏ9g®*¼j\u0017\r¤A®\f-h¶ØP¤@RrÒ¢@¥Ö')3¼ÈIV]tSXÖåÿ8ç>Cþ.J±½\u0017òÆÝ\u0010\u000bðÈZ\u0012x4\u001eÄ:Ç²Ë­\u0000QäÚ\u000b\u0010yþ±©~\u0015 Ç?q\u0018S¿½½ÍO§ºê¶©ö7ûöx{ªoÃïþ\u0016½BmÙØÈÅöþ\u001eQI)\u0001\t¼5ÚK`¯v0\u0002\\\u0001gÝ\fÌ\bØ\u0005À\u0016\u0013`\u001a&@m\u0011XÓ\u0004ü\bÐ\u0002jÃÀj\u0002*\n@i`ô\th^\u0000i ?ù0.b@-\u0015¢2~\u0006Ê\u0011\u0010M¦ìèCK@¥< Iw<ëîqÒÙ[@\u001cx7ëÁ¹(£Í³`lq´áYNñ#á¢£\u0001NQbÈ4!Ï@©@¨ô,Û`\u001d+ \u0007âP\u0015EÙQty\u0014/U_=ÔeT½ÔaD`L²Ñs\u001c¤\u0010´Iºñé¬ñ`ý¤å%\u0015â\f!gVj@5\u0001ÏKa, I\u001eP.õµ\u000eÐËI÷s?$\u0001¡N:.ý#\u000f¤TÒã´ºF Ty<÷I\u0019\rä&;j±c\r®O£6\u000e×À©ö\u001e¯FM\u0003³K NH\u0004HÀ:¹ T+ÀÀ:UØ\\\u0003|×¦ì\u0004ÜÚ\u0007\u0002»TVz\u0015\u0007v©®Læ\u001aLeµÊ\u0003\u001dîYkç>åÁ&D«\u0000\u0014°|Äéð¡2\u001aõ\u001aøå°@»ÐÊ\u0019\u0010/>\u0014é\u0005p02Wjuîh\tìR\u0011Á\u0005\u0000R?S\u000b°\nØ¥Ö*¿Êº\u0005h¹\u0002N.EÔ¡µü\u0005`Ò|\u000e¬ý2°!sõ\u0015à¯t@GÆWN§Ó¼9×u|\u0013}Ý\u001dÏJ\u000f7ÓñÌ\u000f¦\b1n¾dã°\u0013t«S]M7!ñRDsT´JÐP\u0012LÀ\u0015pS\u0007\t)\u001e ã0\u0018Æ\u0015He\u000f\u001d6<\u000f!ÇC1pÜÇ=HÈ¢&ô|\u0001)pèõ\n\u000b0n\u0005,/ÀêiÚ\tÙ\u0015pÓÀ\u0011*ô\u000bpóÀ\u0011*µò\u0011ntqà\bq/@r®Üz\u0005-ÕÕ:ÍÕç@Åê¡ü8\b\u0010ÿù×ú%@x­ÑêËÖM8­ÕW¿ÒÁ\u0019ï¿2i\u0017_ÿv¾ðMú\\æLz-lòexã\u0015$y\u0011[Üçãs\u0002\f÷ÝPp²Ìß\f[nì4\u0016MPHë\u0015~Çn\u0002Jg½úíÆßæëUl\b\u0019\u001b\bw\u001a\u0018ÆP$èðF\u001aÒW±\u0001î­\u0018n£áªÂb$©´_´±a1I¯<9CcÆ$\b­g»Ý\u000eÄ)=Y\u0005C\u0006¼C\u0010oüù»^½{\u001f51a=\u0010\u001fÞ¿y-@Ôyótwª\u0005}÷ý]]=\u001dÂ4ôÃ§º¼Û·uÛeýþP\u001eËífdßOCueQ^ª|¨Ú&{è³sUÜ½èÑç¯ií¡Ìºìûs=¶ûs¥»)RK!\u0007kÆm.^½}÷Ë{\u0001¢*îòc{nB§:ß¶.Ênñ»>b*Us:\u000f¯CÌoÚ¢üñRv]U\"ï>lGö}Þ}¸Bìñ\\×çø1tçf\u000fåæ¡í²Ë¶)7\u000fOÙÐåMÊ»²\u00196§\u0019oÂ\u0006Êúã¦=\u000fuÕñÂ1¯mZº^\u0012AW5OÜ\u0014U?Ôe±Ý»¾\r>,¯ëö¹,ÂÃöyh÷íñTCy×>>\n\u0010Ã§S¹\u0014á×çòeÙÅ´yþ¯á¿¬á¸Íþã\u001d\u0013\u0003\tÛ<lj\r\rhï@¼#8VMöéÍ1ÿ=gDKÕ§ªO]þ)ÓRÆîRº\u0019)7ýq{\u001c2¼Ñ\u00022ï¢7ñM\u0019\u001a\u0015;*Üû\u001dØíþø\u0007Ù^¦àC\u000e\u0000\u0000"
          }
        },
        "response": {
          "status": 204,
          "statusText": "No Content",
          "httpVersion": "HTTP/1.1",
          "headers": [
            {
              "name": "Access-Control-Allow-Credentials",
              "value": "true"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "https://app.listonic.com"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Date",
              "value": "Fri, 08 Aug 2025 12:10:14 GMT"
            },
            {
              "name": "Request-Context",
              "value": "appId=cid-v1:2f7711a9-b21e-4abe-a9d6-5b0ce5d18b64"
            },
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Vary",
              "value": "Origin"
            }
          ],
          "cookies": [],
          "content": {
            "size": 0,
            "mimeType": "text/plain",
            "compression": 0,
            "text": ""
          },
          "redirectURL": "",
          "headersSize": 280,
          "bodySize": 0,
          "_transferSize": 280,
          "_error": null,
          "_fetchedViaServiceWorker": false
        },
        "serverIPAddress": "4.153.129.168",
        "startedDateTime": "2025-08-08T12:10:13.608Z",
        "time": 134.54800006002188,
        "timings": {
          "blocked": 0.7330002266317606,
          "dns": -1,
          "ssl": -1,
          "connect": -1,
          "send": 0.156,
          "wait": 133.4170000861585,
          "receive": 0.24199974723160267,
          "_blocked_queueing": 0.5190002266317606,
          "_workerStart": -1,
          "_workerReady": -1,
          "_workerFetchStart": -1,
          "_workerRespondWithSettled": -1
        }
      },
      {
        "_connectionId": "5252689",
        "_initiator": {
          "type": "script",
          "stack": {
            "callFrames": [
              {
                "functionName": "",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 15,
                "columnNumber": 155574
              },
              {
                "functionName": "",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 15,
                "columnNumber": 124022
              },
              {
                "functionName": "",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 1983,
                "columnNumber": 60530
              },
              {
                "functionName": "xhr",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 1983,
                "columnNumber": 57656
              },
              {
                "functionName": "eQ",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 1983,
                "columnNumber": 61697
              }
            ],
            "parent": {
              "description": "Promise.then",
              "callFrames": [
                {
                  "functionName": "_request",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 65469
                },
                {
                  "functionName": "request",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 64169
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 66059
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 39642
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1954,
                  "columnNumber": 32658
                },
                {
                  "functionName": "",
                  "scriptId": "1123",
                  "url": "https://app.listonic.com/_next/static/chunks/main-21032f6d6babc5f5.js",
                  "lineNumber": 0,
                  "columnNumber": 116070
                },
                {
                  "functionName": "",
                  "scriptId": "1123",
                  "url": "https://app.listonic.com/_next/static/chunks/main-21032f6d6babc5f5.js",
                  "lineNumber": 0,
                  "columnNumber": 116175
                },
                {
                  "functionName": "n",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 35470
                },
                {
                  "functionName": "s",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 35667
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 35726
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 35608
                },
                {
                  "functionName": "k",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1954,
                  "columnNumber": 32768
                },
                {
                  "functionName": "",
                  "scriptId": "1130",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/lists/%5BlistId%5D-15c980b7d9dfb98f.js",
                  "lineNumber": 0,
                  "columnNumber": 18677
                },
                {
                  "functionName": "",
                  "scriptId": "1123",
                  "url": "https://app.listonic.com/_next/static/chunks/main-21032f6d6babc5f5.js",
                  "lineNumber": 0,
                  "columnNumber": 116070
                },
                {
                  "functionName": "",
                  "scriptId": "1123",
                  "url": "https://app.listonic.com/_next/static/chunks/main-21032f6d6babc5f5.js",
                  "lineNumber": 0,
                  "columnNumber": 116175
                },
                {
                  "functionName": "n",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 35470
                },
                {
                  "functionName": "s",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 35667
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 35726
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 1983,
                  "columnNumber": 35608
                },
                {
                  "functionName": "I.onSubmit",
                  "scriptId": "1130",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/lists/%5BlistId%5D-15c980b7d9dfb98f.js",
                  "lineNumber": 0,
                  "columnNumber": 19115
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 10,
                  "columnNumber": 66183
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 10,
                  "columnNumber": 68468
                },
                {
                  "functionName": "",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 10,
                  "columnNumber": 65477
                }
              ],
              "parent": {
                "description": "Promise.then",
                "callFrames": [
                  {
                    "functionName": "",
                    "scriptId": "1124",
                    "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                    "lineNumber": 10,
                    "columnNumber": 65380
                  },
                  {
                    "functionName": "",
                    "scriptId": "1124",
                    "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                    "lineNumber": 10,
                    "columnNumber": 68468
                  },
                  {
                    "functionName": "",
                    "scriptId": "1124",
                    "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                    "lineNumber": 10,
                    "columnNumber": 65867
                  },
                  {
                    "functionName": "",
                    "scriptId": "1124",
                    "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                    "lineNumber": 10,
                    "columnNumber": 68468
                  },
                  {
                    "functionName": "onBlur",
                    "scriptId": "1130",
                    "url": "https://app.listonic.com/_next/static/chunks/pages/lists/%5BlistId%5D-15c980b7d9dfb98f.js",
                    "lineNumber": 0,
                    "columnNumber": 20980
                  },
                  {
                    "functionName": "eA",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 16669
                  },
                  {
                    "functionName": "eq",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 16823
                  },
                  {
                    "functionName": "",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 35492
                  },
                  {
                    "functionName": "rg",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 35591
                  },
                  {
                    "functionName": "rv",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 36005
                  },
                  {
                    "functionName": "",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 41463
                  },
                  {
                    "functionName": "oq",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 104352
                  },
                  {
                    "functionName": "eD",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 15802
                  },
                  {
                    "functionName": "rx",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 37296
                  },
                  {
                    "functionName": "nB",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 22894
                  },
                  {
                    "functionName": "nA",
                    "scriptId": "1122",
                    "url": "https://app.listonic.com/_next/static/chunks/framework-b3802df6cb251587.js",
                    "lineNumber": 8,
                    "columnNumber": 22678
                  },
                  {
                    "functionName": "o",
                    "scriptId": "1124",
                    "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                    "lineNumber": 15,
                    "columnNumber": 148896
                  }
                ]
              }
            }
          }
        },
        "_priority": "High",
        "_resourceType": "xhr",
        "cache": {},
        "connection": "443",
        "pageref": "page_4",
        "request": {
          "method": "PATCH",
          "url": "https://api.listonic.com/api/lists/194157372/items/20423528450",
          "httpVersion": "HTTP/1.1",
          "headers": [
            {
              "name": "Accept",
              "value": "application/json, text/plain, */*"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate, br, zstd"
            },
            {
              "name": "Accept-Language",
              "value": "pl,en-US;q=0.9,en;q=0.8"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Content-Length",
              "value": "103"
            },
            {
              "name": "Content-Type",
              "value": "application/json"
            },
            {
              "name": "Culture",
              "value": "pl"
            },
            {
              "name": "DeviceId",
              "value": "61bb5344-507d-483a-8fad-285ad3d077ec"
            },
            {
              "name": "Host",
              "value": "api.listonic.com"
            },
            {
              "name": "LCode",
              "value": "1754654889827"
            },
            {
              "name": "Origin",
              "value": "https://app.listonic.com"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Referer",
              "value": "https://app.listonic.com/"
            },
            {
              "name": "Sec-Fetch-Dest",
              "value": "empty"
            },
            {
              "name": "Sec-Fetch-Mode",
              "value": "cors"
            },
            {
              "name": "Sec-Fetch-Site",
              "value": "same-site"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36"
            },
            {
              "name": "Version",
              "value": "web:4.0.0"
            },
            {
              "name": "sec-ch-ua",
              "value": "\"Not)A;Brand\";v=\"8\", \"Chromium\";v=\"138\", \"Google Chrome\";v=\"138\""
            },
            {
              "name": "sec-ch-ua-mobile",
              "value": "?0"
            },
            {
              "name": "sec-ch-ua-platform",
              "value": "\"Windows\""
            }
          ],
          "queryString": [],
          "cookies": [],
          "headersSize": 2090,
          "bodySize": 103,
          "postData": {
            "mimeType": "application/json",
            "text": "{\"id\":\"20423528450\",\"name\":\"serek typu almette\",\"amount\":\"40\",\"unit\":\"g\",\"price\":0,\"categoryId\":\"1907\"}"
          }
        },
        "response": {
          "status": 200,
          "statusText": "OK",
          "httpVersion": "HTTP/1.1",
          "headers": [
            {
              "name": "Access-Control-Allow-Credentials",
              "value": "true"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "https://app.listonic.com"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Content-Length",
              "value": "0"
            },
            {
              "name": "Date",
              "value": "Fri, 08 Aug 2025 12:10:17 GMT"
            },
            {
              "name": "Item-Update-Date",
              "value": "1754655017"
            },
            {
              "name": "Request-Context",
              "value": "appId=cid-v1:020b87ab-ce6e-4ab0-9e8a-91721a69d633"
            },
            {
              "name": "Vary",
              "value": "Origin"
            }
          ],
          "cookies": [],
          "content": {
            "size": 0,
            "mimeType": "text/plain",
            "compression": 0,
            "text": ""
          },
          "redirectURL": "",
          "headersSize": 306,
          "bodySize": 0,
          "_transferSize": 306,
          "_error": null,
          "_fetchedViaServiceWorker": false
        },
        "serverIPAddress": "52.18.2.90",
        "startedDateTime": "2025-08-08T12:10:16.087Z",
        "time": 269.2870001774281,
        "timings": {
          "blocked": 104.32700014810264,
          "dns": -1,
          "ssl": -1,
          "connect": -1,
          "send": 0.137,
          "wait": 164.71000010021032,
          "receive": 0.1129999291151762,
          "_blocked_queueing": 104.07400014810264,
          "_workerStart": -1,
          "_workerReady": -1,
          "_workerFetchStart": -1,
          "_workerRespondWithSettled": -1
        }
      },
      {
        "_connectionId": "5252689",
        "_initiator": {
          "type": "preflight",
          "url": "https://api.listonic.com/api/lists/194157372/items/20423528450",
          "requestId": "90312.1749"
        },
        "_priority": "High",
        "_resourceType": "preflight",
        "cache": {},
        "connection": "443",
        "pageref": "page_4",
        "request": {
          "method": "OPTIONS",
          "url": "https://api.listonic.com/api/lists/194157372/items/20423528450",
          "httpVersion": "HTTP/1.1",
          "headers": [
            {
              "name": "Accept",
              "value": "*/*"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate, br, zstd"
            },
            {
              "name": "Accept-Language",
              "value": "pl,en-US;q=0.9,en;q=0.8"
            },
            {
              "name": "Access-Control-Request-Headers",
              "value": "authorization,content-type,culture,deviceid,lcode,version"
            },
            {
              "name": "Access-Control-Request-Method",
              "value": "PATCH"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Host",
              "value": "api.listonic.com"
            },
            {
              "name": "Origin",
              "value": "https://app.listonic.com"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Referer",
              "value": "https://app.listonic.com/"
            },
            {
              "name": "Sec-Fetch-Dest",
              "value": "empty"
            },
            {
              "name": "Sec-Fetch-Mode",
              "value": "cors"
            },
            {
              "name": "Sec-Fetch-Site",
              "value": "same-site"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36"
            }
          ],
          "queryString": [],
          "cookies": [],
          "headersSize": 641,
          "bodySize": 0
        },
        "response": {
          "status": 204,
          "statusText": "No Content",
          "httpVersion": "HTTP/1.1",
          "headers": [
            {
              "name": "Access-Control-Allow-Credentials",
              "value": "true"
            },
            {
              "name": "Access-Control-Allow-Headers",
              "value": "authorization,content-type,culture,deviceid,lcode,version"
            },
            {
              "name": "Access-Control-Allow-Methods",
              "value": "PATCH"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "https://app.listonic.com"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Date",
              "value": "Fri, 08 Aug 2025 12:10:17 GMT"
            },
            {
              "name": "Request-Context",
              "value": "appId=cid-v1:020b87ab-ce6e-4ab0-9e8a-91721a69d633"
            },
            {
              "name": "Vary",
              "value": "Origin"
            }
          ],
          "cookies": [],
          "content": {
            "size": 0,
            "mimeType": "x-unknown",
            "compression": 391
          },
          "redirectURL": "",
          "headersSize": 391,
          "bodySize": -391,
          "_transferSize": 0,
          "_error": null,
          "_fetchedViaServiceWorker": false
        },
        "serverIPAddress": "52.18.2.90",
        "startedDateTime": "2025-08-08T12:10:16.089Z",
        "time": 103.19999994784594,
        "timings": {
          "blocked": -0.825,
          "dns": -1,
          "ssl": -1,
          "connect": -1,
          "send": 0.15200000000000002,
          "wait": 102.83099992531538,
          "receive": 0.21700002253055573,
          "_blocked_queueing": -1,
          "_workerStart": -1,
          "_workerReady": -1,
          "_workerFetchStart": -1,
          "_workerRespondWithSettled": -1
        }
      },
      {
        "_connectionId": "5255072",
        "_initiator": {
          "type": "script",
          "stack": {
            "callFrames": [
              {
                "functionName": "",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 15,
                "columnNumber": 155574
              },
              {
                "functionName": "",
                "scriptId": "1124",
                "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                "lineNumber": 15,
                "columnNumber": 124022
              },
              {
                "functionName": "qr",
                "scriptId": "1154",
                "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                "lineNumber": 1,
                "columnNumber": 55225
              },
              {
                "functionName": "",
                "scriptId": "1154",
                "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                "lineNumber": 1,
                "columnNumber": 54410
              },
              {
                "functionName": "",
                "scriptId": "1154",
                "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                "lineNumber": 1,
                "columnNumber": 9507
              },
              {
                "functionName": "",
                "scriptId": "1154",
                "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                "lineNumber": 1,
                "columnNumber": 9612
              },
              {
                "functionName": "o",
                "scriptId": "1154",
                "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                "lineNumber": 1,
                "columnNumber": 8329
              }
            ],
            "parent": {
              "description": "Promise.then",
              "callFrames": [
                {
                  "functionName": "c",
                  "scriptId": "1154",
                  "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                  "lineNumber": 1,
                  "columnNumber": 8494
                },
                {
                  "functionName": "",
                  "scriptId": "1154",
                  "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                  "lineNumber": 1,
                  "columnNumber": 8504
                },
                {
                  "functionName": "dt",
                  "scriptId": "1154",
                  "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                  "lineNumber": 1,
                  "columnNumber": 8272
                },
                {
                  "functionName": "Hr",
                  "scriptId": "1154",
                  "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                  "lineNumber": 1,
                  "columnNumber": 53536
                },
                {
                  "functionName": "",
                  "scriptId": "1154",
                  "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                  "lineNumber": 1,
                  "columnNumber": 69018
                },
                {
                  "functionName": "o",
                  "scriptId": "1124",
                  "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                  "lineNumber": 15,
                  "columnNumber": 148896
                }
              ],
              "parent": {
                "description": "setTimeout",
                "callFrames": [
                  {
                    "functionName": "",
                    "scriptId": "1124",
                    "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                    "lineNumber": 15,
                    "columnNumber": 154997
                  },
                  {
                    "functionName": "Q",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 7424
                  },
                  {
                    "functionName": "Wr",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 53393
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 27981
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 9507
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 9612
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 8527
                  },
                  {
                    "functionName": "dt",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 8272
                  },
                  {
                    "functionName": "Cn",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 26036
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 31032
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 9507
                  },
                  {
                    "functionName": "",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 9612
                  },
                  {
                    "functionName": "o",
                    "scriptId": "1154",
                    "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                    "lineNumber": 1,
                    "columnNumber": 8329
                  }
                ],
                "parent": {
                  "description": "Promise.then",
                  "callFrames": [
                    {
                      "functionName": "c",
                      "scriptId": "1154",
                      "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                      "lineNumber": 1,
                      "columnNumber": 8494
                    },
                    {
                      "functionName": "",
                      "scriptId": "1154",
                      "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                      "lineNumber": 1,
                      "columnNumber": 8504
                    },
                    {
                      "functionName": "dt",
                      "scriptId": "1154",
                      "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                      "lineNumber": 1,
                      "columnNumber": 8272
                    },
                    {
                      "functionName": "Zn",
                      "scriptId": "1154",
                      "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                      "lineNumber": 1,
                      "columnNumber": 30677
                    },
                    {
                      "functionName": "ui",
                      "scriptId": "1154",
                      "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                      "lineNumber": 1,
                      "columnNumber": 57504
                    },
                    {
                      "functionName": "",
                      "scriptId": "1154",
                      "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                      "lineNumber": 1,
                      "columnNumber": 57445
                    },
                    {
                      "functionName": "",
                      "scriptId": "1154",
                      "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                      "lineNumber": 1,
                      "columnNumber": 9507
                    },
                    {
                      "functionName": "",
                      "scriptId": "1154",
                      "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                      "lineNumber": 1,
                      "columnNumber": 9612
                    },
                    {
                      "functionName": "",
                      "scriptId": "1154",
                      "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                      "lineNumber": 1,
                      "columnNumber": 8527
                    },
                    {
                      "functionName": "dt",
                      "scriptId": "1154",
                      "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                      "lineNumber": 1,
                      "columnNumber": 8272
                    },
                    {
                      "functionName": "oi",
                      "scriptId": "1154",
                      "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                      "lineNumber": 1,
                      "columnNumber": 57204
                    },
                    {
                      "functionName": "Gn",
                      "scriptId": "1154",
                      "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                      "lineNumber": 1,
                      "columnNumber": 29575
                    },
                    {
                      "functionName": "",
                      "scriptId": "1154",
                      "url": "https://scripts.clarity.ms/0.8.23/clarity.js",
                      "lineNumber": 1,
                      "columnNumber": 69018
                    }
                  ],
                  "parent": {
                    "description": "attributes",
                    "callFrames": [
                      {
                        "functionName": "",
                        "scriptId": "1124",
                        "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                        "lineNumber": 1980,
                        "columnNumber": 67293
                      },
                      {
                        "functionName": "o",
                        "scriptId": "1124",
                        "url": "https://app.listonic.com/_next/static/chunks/pages/_app-02685a0c4b16c2c8.js",
                        "lineNumber": 15,
                        "columnNumber": 148896
                      }
                    ]
                  }
                }
              }
            }
          }
        },
        "_priority": "High",
        "_resourceType": "xhr",
        "cache": {},
        "connection": "443",
        "pageref": "page_4",
        "request": {
          "method": "POST",
          "url": "https://b.clarity.ms/collect",
          "httpVersion": "HTTP/1.1",
          "headers": [
            {
              "name": "Accept",
              "value": "application/x-clarity-gzip"
            },
            {
              "name": "Accept-Encoding",
              "value": "gzip, deflate, br, zstd"
            },
            {
              "name": "Accept-Language",
              "value": "pl,en-US;q=0.9,en;q=0.8"
            },
            {
              "name": "Cache-Control",
              "value": "no-cache"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Content-Length",
              "value": "2999"
            },
            {
              "name": "Host",
              "value": "b.clarity.ms"
            },
            {
              "name": "Origin",
              "value": "https://app.listonic.com"
            },
            {
              "name": "Pragma",
              "value": "no-cache"
            },
            {
              "name": "Referer",
              "value": "https://app.listonic.com/"
            },
            {
              "name": "Sec-Fetch-Dest",
              "value": "empty"
            },
            {
              "name": "Sec-Fetch-Mode",
              "value": "cors"
            },
            {
              "name": "Sec-Fetch-Site",
              "value": "cross-site"
            },
            {
              "name": "Sec-Fetch-Storage-Access",
              "value": "active"
            },
            {
              "name": "User-Agent",
              "value": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36"
            },
            {
              "name": "sec-ch-ua",
              "value": "\"Not)A;Brand\";v=\"8\", \"Chromium\";v=\"138\", \"Google Chrome\";v=\"138\""
            },
            {
              "name": "sec-ch-ua-mobile",
              "value": "?0"
            },
            {
              "name": "sec-ch-ua-platform",
              "value": "\"Windows\""
            }
          ],
          "queryString": [],
          "cookies": [],
          "headersSize": 732,
          "bodySize": 4522,
          "postData": {
            "mimeType": "",
            "text": "\u001f\b\u0000\u0000\u0000\u0000\u0000\u0000\nåÍn$¹\r_¥QÇ5#J¢~¼ð!Á\u001e²Àþ\u0001ÍÅð¡Ü]¶k·º«QÝí±7\bgÉ£åI\u0002JTÚ;\töC°³ã1¿.\")¬þ[Ó77wú\u0010>hÓ\u0000*@­GÊ\u001ahõ\u001cÌK?w¾f×½<Ûm\u0003M×½\u001e\u001b@Pé¿æù|>n>~ìÇ\u000fãp:Oaûa;í?\u001eÇüûé#Fä×Í=4]sswZ{$Ð\u001e¢÷Ðüë\u001fÿ¬ÿ4÷pÚ u:}\u0002]0`\u0002\tp~\u0005Ñ\tJ@\u000bðJñ1\u0003­l\u0005<\u0018\u001f\u0004èu\r¦\u0002ÆTÀV|\u0005\\\u0005|µ¸6«UFá\n\u0002\u0013Ä*Õâ&UNÎ#\u0003ëÁj+Àè\u0004,\u0002zÒ`-\u0016\u0010*`ÁRQe}\u0005\u001cX¯\u00058¬@\u0000\u001b*÷¡}\u0006¤\u000bðî\u001aØ²F ¬Ê\bpâ\u0012\u0013±\u0002\u000e(\f¬R\u0015 p\u0005¸\nhpZÖ°h* ÀYq¢ÕÕ\u001a6s¾P\u0001\u000f®$5Õ\u001aÀÅ²µ\u00150àìÃRµ¸EðZh]VÅÆq\u0004½)ª\u0002VÀSy\"\n\u0018ðT¬µ*\u0005Þ¯\b+UÚ\u000f¡Jv\u00108t¥J\u001b\bXTIRg !\u0018IQ²õ\u001a\bÁR\u0001á\u001aPYÜ5(yEÎ\\r\fHÎÇ\u0002¢$5\u0005weU,nwª¶Êræ\u0015\u0010¯)Ohª\u0000A$YÃIh\u0017àÅWâ5\b\u0012A®W 5¢¾\u0002¨ëÄ5Ñò7îÊ`TVÜå\t¯b$XÞwÄuâµÃP\u0005Ñ\u0016ð:\\¨¢¸,¼0bIàj«\u0015 êBêÀ`\u0004D#$Ö\u0001HÄJ£©¼ÃÖ \u0015BÕ~¸²a©QÑ»wÄÉ~bÄ÷$'¦UXksL¢\u0010£Þ\u00119IVÕ¾Fb\u0012Ô¾æ¿0uÊA¶\u000bÉ\u001eµ¨¨\"ì7© \u0016ËùcÂÂ(ÚÐÆðóJ\tqÕ:é¶RZ\u0017Æ|©¡VE[4\u000bqµI\u0019µZnD\u0002kC±ZËE\b_<Zg\u0005LR][Çê`W®?©ÊÖ¨j\u001dbÛ$ã­Ñ¶äw-ñ1¦~FUÄRE§Pj\u0005ÌI\u0004ïÐæÜ¿ßv\u0013Ðä´SöKZÄkÀ!*Àh.­Î;Íëe\u000eqÆ=<>÷éÙ|xNæ\u0018Þ¸WÊ>&Ê\u000bïÚ¥ÊZ\f |¤+ãE\u000eã;`\u0005è÷ª´å+À¢Êw@\t\b× $2yu­\n½-àÝ\u0013rÉãõ>P.\u0012JU¯\u0006¦¬ï¤\u0015h±ÊÛkU*\u0016@×O(WÖp¹¬/ r¢\u0002TRûÈûu\rí JÝ!\u001fVkÑA,aòq]AY\br'PÈý\fË)D\br©SP~r\u0001B\tEÀE?^®t\nzÑO©kpE¾ø¸\u0005(^\rfÕ¯<x,zòuü?)\\:\u0019\nN-À\u0006\u0003.\u0015r'c¸¤XoÀÉ}NÁ'UÖ  u\n\u001cµse¤ÀªÈ³\u001c!fg0·&û$yàc¨\u001d8éw)æö<\u0003@R/)æÞ'µ\u000eVy _c\u0001\u00029I§k/ù\u0000È!#VEÉ3®y&\u0004 \u0012h±\u0002\u0006H\u0002²Ó9G`\u0017«<®Ày°¡,î«'\u0006»\u001bÄ*\u00024©\u000b\\1í\u001b>4\\Ê\\6×©|Ãf`¸¡7\u0002°R¥#X¹_Ê½\u000fq¼\f\u0006°¶¨Ê;÷C\u0006\u0011¬tKNå\u0013<fD\u0001d* Àj\u0012 ',åDÐ`åòpJ\u000eRºG½\u0005+Þu*$U!!ì+,VÅ°\u0002X<hVU6U¶Üñè4.i\u0001ùÔäÁÅø\u001a%ÛµA°Ò!;Ì52\u0003$01\u0016P=¡\"\u00189á\u000eÝrÒx\\åa)-\u0018B%_\u000b:\u0006½ÊµJ»C¾FÑS\u0005rª\u000bP5H+p#O¾FZ:'³k\u001aNÐé\nä.#\u00032\u0015È­D\u0006\u0017w\u0002r'!@¯ÀäBáýI&È*ÀUl\u0005¨\u0002¾2×Ø\nÄÊ\\]+Ã`\u0006H`¥Yr2óe(N\u0011S@2O+ª`±<\u000b¥á\n£<§¡,n­YskâZÊ¾âÏÕEUN\f8©Ê\u0019a0\u0003ô\u0015ÈÝe\u0006*V P^<Æ\u0000VÊ·!·\u0011\u0003\u001f&Ég\u001bW¹çmKÖRnEÙ\u001fÏXq\u0007á\u0012ïèìþ2\u0007&9qPËçÉ­rZ^¸8òaóû\u0016ù¼\fh«\\ôËõ¶ÊÅþP¯ËrÉ²P¯kÖì\u000b>ÖòÅ~\u0019LÒ~\\ì\n¯å®Èãâ·$Ï1ö:/}Þ\u001b±kk¼¶GÜÚkû­ÈéÊþòFÈ\u001bw½_\u0019]¼ñ«l\u0000#W­7a]×:06\u0014ùR\u001a\"ZSì¢_\u0003Ïc\u0006EnYäÚ)û²%Oró­ådza#èPôäÊc|à\u0016\b´/zr|÷\u0010B\u0000íÈó\u0015Ë\u0007=\u0004\u0005R¨\u0010¸ÿÐ¶¬ëhÛ\bÚ\u0014¹ÇEn\u001caÃÛR¾\u0010\u0002Û/GÕZ×eûåÐ{ÊU-É\u0005-çË\u0013ºb¿\u0004Zº&OzÙç}©¢'\u000f»\\Ù|@(#'#ú\u0003x.¹±è±ns3^üL$ö+ð<Ç¢Çá*G(}¹'éäY\u000f§¼Pô$íi{(£ªwÒ.rñ¿3ïäTäñZ.ù,/K\\T\"øº|Égy\u0000óîó+r¶Sì÷9·\"c¸Y É9ÔÒ>yó\u0003Ï%AÆ\u0010ïsÝHòÆcË;¨@àùmÍ\"\u0017\u001aIÞ*gy×\u0019I\u001e\u0016yPò®7\u0010¤\u000e_^-\u0006%#9Ë¹TÈ\u0000\u0012T©\nN³¤È¥^±g\nÇ%îí±! ZâÞ9/ò%¯PqL¥)\fn\u0005Ü¬¹\f{ÿ\u0005ªÑám. çh\u0002é._@NÒ<:pÿ´uì\">¸«|\u001d\u0012Ù1±ëÐ¢&U\u000e\u001d\u0005à×Ð¼Äñ×Ëù ?\u001b\b_Çðôaí¼\u0002ËuH¾â/ÿâY]H/E|d\u0019jâ°úw\u001aAÞVõ;[ôîw^Ý¤o\u0004\u0014°¸õ\u0001\r\u00164\u0001ç\u001f:o(Ê8p¿ï°|ÞBPjzM¶¸W÷÷÷Ð\u001coG,°f\u0004\rÍ?}÷m\u0003ÍØ\u001dnc\u0003ÍvìN§Ûqxzæ÷\u001d§óÛØßn§qÛÓö¹ß÷7Ä¾JßÛ»vîwýËÐéÐ>ÚË°»}÷*ã·Ê³Ï}·\u001bûÓé2´Óörj_Óð0ö·ù¥æß¥÷/Ñ+h¾ùþÇ>5Ð\f»ÛËa`óc·í§q×Ï·ï_,{\u0019\u000eÇËù[6ú»i×ÿðÒÏó°ë7»nþå&±¯»ù+ôÜ>^Æqó9ÿ8ÏÃ¶;÷iÞõs{\u000eýæá©=ÏÝátìæþpÞ\u001c_[³áwDíi¿.çq8ôùic7òhýH\u0006ópxjÕf7º±ßÝl/óiâ5Îm7Óç~Çß]ÎÓvÚ\u001fÇþÜßN\r4ç·c_¼ðÒþ½×«÷Rÿã`!<ø§bÁWZó§>}úáûÅ§yº\u001c7s?vçá¥ßìßZü@%\u0000âã4\u001cÎý,aØ|Á¥Ç·\u0016s\\§~¾yxjw\u0012Û\u0016Úö7ót9ìú];>mÏ<ÍÝ[Kªxõár>OEh¾þæ¯cÿºùùr:\u000foí¶Oæ<uÇ6l\u000fmØ$[äôÏÇiÞoö»ýphÛ;Òs¿¿gÁñµ\r§yú¼x½ztwo6F©ýé«&5H\u0004Q9¸÷ÐÌÓØßînòi»ÝðÚÞÌº»ál®Ýõ§í<<ô»·\u0015o\u0017<v\u000fý8^Ó\u0012æÓ¹;ÿ&¡ê#õ8¼ö»ÍÃt>OûVmfNVmÎÓ±U_[Kä)\u001fÿ»ÝNã\u001dþ8NÛ·S\u000fÑççáÜ_\u0014@î\u0012>£*¦Bú¹\ré§<2nÒ\u001eîò&¦c¸¿é\u000eÃ¾;÷íp¸Ûq:õ»\u0015Oó\u0017ùi\u001cv¶ç©MýÂ\u001aùCÃ¡}§}þ\u0014gT÷0\u001cvýëm¿'ÖlÊ\u0017Ó #âèr\u001b_×ÄC·ïÿSMü¿)â\\\u0012\u001bà¯¢\u000bpgïºýt9ü×£;\u000fá^ÔÏßñ°_.¢¢ìw]Bµ¶ü\u0000ëÊ±äKÚA\u001bCHý^\f\u001e?p4QM9ØXÊP\f\u0006¿üøÇï4¼ßÑýýýßÿ\rGÆ4\u0005k!\u0000\u0000"
          }
        },
        "response": {
          "status": 204,
          "statusText": "No Content",
          "httpVersion": "HTTP/1.1",
          "headers": [
            {
              "name": "Access-Control-Allow-Credentials",
              "value": "true"
            },
            {
              "name": "Access-Control-Allow-Origin",
              "value": "https://app.listonic.com"
            },
            {
              "name": "Connection",
              "value": "keep-alive"
            },
            {
              "name": "Date",
              "value": "Fri, 08 Aug 2025 12:10:24 GMT"
            },
            {
              "name": "Request-Context",
              "value": "appId=cid-v1:2f7711a9-b21e-4abe-a9d6-5b0ce5d18b64"
            },
            {
              "name": "Server",
              "value": "nginx"
            },
            {
              "name": "Vary",
              "value": "Origin"
            }
          ],
          "cookies": [],
          "content": {
            "size": 0,
            "mimeType": "text/plain",
            "compression": 0,
            "text": ""
          },
          "redirectURL": "",
          "headersSize": 280,
          "bodySize": 0,
          "_transferSize": 280,
          "_error": null,
          "_fetchedViaServiceWorker": false
        },
        "serverIPAddress": "4.153.129.168",
        "startedDateTime": "2025-08-08T12:10:22.652Z",
        "time": 130.42300008237362,
        "timings": {
          "blocked": 1.0479999513328075,
          "dns": -1,
          "ssl": -1,
          "connect": -1,
          "send": 0.21399999999999997,
          "wait": 129.00699988973142,
          "receive": 0.15400024130940437,
          "_blocked_queueing": 0.5439999513328075,
          "_workerStart": -1,
          "_workerReady": -1,
          "_workerFetchStart": -1,
          "_workerRespondWithSettled": -1
        }
      }
    ]
  }
}