---
title: SpamWatch API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - python: Python
  - javascript: NodeJS
  - shell: curl

toc_footers:
  - <a href='https://t.me/SpamWatchSupport'>Get a API key for testing</a>

includes:
  - banlist
  - permissions
  - tokens

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

```shell
# With shell, you can just pass the correct header with each request
curl "https://api.spamwat.ch"
  -H "Authorization: Bearer API_KEY"
```

> Make sure to replace `API_KEY` with your API key.

The API uses API keys to allow access to the API. You can register a new Kittn API key at our [developer portal](http://example.com/developers).

The API expects for the API key to be included in all API requests to the server in a header that looks like the following:

`Authorization: Bearer API_KEY`

<aside class="notice">
You must replace <code>API_KEY</code> with your personal API key.
</aside>
