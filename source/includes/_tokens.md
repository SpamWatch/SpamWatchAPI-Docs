# Tokens

## Getting your own Token

```python
import spamwatch

client = spamwatch.Client('API_KEY')
my_token = client.get_self()
```

```javascript
const SpamWatch = require('spamwatch');

const client = new SpamWatch.Client("API_KEY");
let my_token = client.getSelf()
```

```crystal
require "spamwatch"

token = "API_KEY"
client = SpamWatch::Client.new(token)

my_token = client.get_self()
```

```csharp
using SpamWatch;

var client = new SpamWatch.Client("API_KEY");
var token = client.Token;
// Or by making a request:
var token = client.GetSelf();
```


> The returned JSON:

```json
{
    "id": 1,
    "permission": "Root",
    "retired": false,
    "token": "vN9cBTtO8xgC4Qm",
    "userid": 777000
}
```

This returns the Token the request was made with. Useful for checking the permission Level of the token.

### HTTP Request

`GET https://api.spamwat.ch/tokens/self`

### Required permission level
User

## Getting all Tokens

```python
import spamwatch

client = spamwatch.Client('API_KEY')
tokens = client.get_tokens()
```

```javascript
const SpamWatch = require('spamwatch');

const client = new SpamWatch.Client("API_KEY");
let tokens = client.getTokens()
```

```crystal
require "spamwatch"

token = "API_KEY"
client = SpamWatch::Client.new(token)

tokens = client.get_tokens()
```

```csharp
using SpamWatch;

var client = new SpamWatch.Client("API_KEY");
var tokens = client.GetTokens();
```

> The returned JSON:

```json
[
    {
        "id": 1,
        "permission": "Root",
        "retired": false,
        "token": "vN9cBTtO8xgC4Qm",
        "userid": 777000
    },
    {
        "id": 3,
        "permission": "Admin",
        "retired": false,
        "token": "wfsr7EstLz5RGkV",
        "userid": 777000
    }
]
```

This returns a list of all Tokens.

### HTTP Request

`GET https://api.spamwat.ch/tokens`

### Required permission level
Root

## Getting a specific Token

```python
import spamwatch

client = spamwatch.Client('API_KEY')
token = client.get_token(1)
```

```javascript
const SpamWatch = require('spamwatch');

const client = new SpamWatch.Client("API_KEY");
let token = client.getToken(1)
```

```crystal
require "spamwatch"

token = "API_KEY"
client = SpamWatch::Client.new(token)

token = client.get_token(1)
```

```csharp
using SpamWatch;

var client = new SpamWatch.Client("API_KEY");
var token = client.GetToken(1);
```

> The returned JSON:

```json
{
    "id": 1,
    "permission": "Root",
    "retired": false,
    "token": "vN9cBTtO8xgC4Qm",
    "userid": 777000
}
```

This returns a specific Tokens.

### HTTP Request

`GET https://api.spamwat.ch/tokens/$id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The id of the Token

### Required permission level
Root

## Creating a Token

```python
import spamwatch

client = spamwatch.Client('API_KEY')
client.create_token(777000, Permission.User)
```

```javascript
const SpamWatch = require('spamwatch');

const client = new SpamWatch.Client("API_KEY");
// Todo
```

```crystal
require "spamwatch"

token = "API_KEY"
client = SpamWatch::Client.new(token)

// Todo
```

```csharp
using SpamWatch;

var client = new SpamWatch.Client("API_KEY");
client.CreateToken(777000, Permission.User)
```

### HTTP Request

`POST https://api.spamwat.ch/tokens`

### Headers
Key | Value
--- | -----
`Content-Type` | `application/json`

> Example Body

```json
{
    "id": 777000,
    "permission": "Admin"
}
```

### JSON Body
A single JSON Object with the following keys:

Key | Value
--- | -----
`id` | The id of the User connected to this Token
`permission` | The permission level of the Token

Possible values for `permission` are Root, Admin and User

### Required permission level
Admin

<aside class="notice">
This method returns <code>204 No Content</code>
</aside>

## Retiring a specific Token

```python
import spamwatch

client = spamwatch.Client('API_KEY')
client.delete_token(1)
```

```javascript
const SpamWatch = require('spamwatch');

const client = new SpamWatch.Client("API_KEY");
client.deleteToken(1)
```

```crystal
require "spamwatch"

token = "API_KEY"
client = SpamWatch::Client.new(token)

client.delete_token(1)
```

```csharp
using SpamWatch;

var client = new SpamWatch.Client("API_KEY");
client.DeleteToken(1);
```

This retires a specific Token. The Token won't be able to make any requests anymore.

### HTTP Request

`DELETE https://api.spamwat.ch/tokens/$id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The id of the Token

### Required permission level
Root

<aside class="notice">
This method returns <code>204 No Content</code>
</aside>
