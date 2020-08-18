---
title: SpamWatch API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - python: Python
  - javascript: NodeJS
  - crystal: Crystal
  - csharp: CSharp
  
toc_footers:
  - <a href='https://t.me/SpamWatch' rel="noopener" target="_blank">Join the channel for any news</a>
  - <a href='https://t.me/SpamWatchBot?start=token' rel="noopener" target="_blank">Get an access token</a>

includes:
  - permissions
  - banlist
  - tokens
  - misc

search: true
---

# Authentication

> To authorize, use this code:

```python
import spamwatch

client = spamwatch.Client('API_KEY')
```

```javascript
const SpamWatch = require('spamwatch');

const client = new SpamWatch.Client("API_KEY");
```

```crystal
require "spamwatch"

token = "API_KEY"
client = SpamWatch::Client.new(token)
```

```csharp
using SpamWatch;

var client = new SpamWatch.Client("API_KEY");
```

> Make sure to replace `API_KEY` with your API key.

The API uses API keys to allow access to the API. You can get a API key [here](https://t.me/SpamWatchBot?start=token).

The API expects the API key to be included in all API requests to the server in a header that looks like the following:

`Authorization: Bearer $API_KEY`

<aside class="notice">
You must replace <code>API_KEY</code> with your API key.
</aside>
