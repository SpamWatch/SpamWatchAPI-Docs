# Tokens

## Getting your own Token

```python
import spamwatch

client = spamwatch.Client('API_KEY')
bans = client.get_self()
```

```javascript
const SpamWatch = require('spamwatch');

const client = new SpamWatch.Client("API_KEY");
let bans = client.getSelf()
```

> This will return the following:

```python
<Token: id: 1, permission: <Permission.Root: 1>, token: 'vN9cBTtO8xgC4Qm', userid: 777000, retired: False>
```

```javascript
// Todo
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
bans = client.get_tokens()
```

```javascript
const SpamWatch = require('spamwatch');

const client = new SpamWatch.Client("API_KEY");
let bans = client.getTokens()
```

> This will return the following:

```python
[<Token: id: 1,
         permission: <Permission.Root: 1>,
         token: 'vN9cBTtO8xgC4Qm',
         userid: 777000,
         retired: False>,
 <Token: id: 3,
         permission: <Permission.Admin: 2>,
         token: 'wfsr7EstLz5RGkV',
         userid: 777000,
         retired: False>]
```

```javascript
// Todo
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
bans = client.get_token(1)
```

```javascript
const SpamWatch = require('spamwatch');

const client = new SpamWatch.Client("API_KEY");
let bans = client.getToken(1)
```

> This will return the following:

```python
<Token: id: 1,
        permission: <Permission.Root: 1>,
        token: 'vN9cBTtO8xgC4Qm',
        userid: 777000,
        retired: False>
```

```javascript
// Todo
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
# Todo
```


### HTTP Request

`POST https://api.spamwat.ch/token`

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
bans = client.delete_token(1)
```

```javascript
const SpamWatch = require('spamwatch');

const client = new SpamWatch.Client("API_KEY");
let bans = client.deleteToken(1)
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
