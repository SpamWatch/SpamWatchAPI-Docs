# Banlist

## Getting a specific ban

```python
import spamwatch

client = spamwatch.Client('API_KEY')
ban = client.get_ban(777000)
```

```javascript
const SpamWatch = require('spamwatch');

const client = new SpamWatch.Client("API_KEY");
let ban = client.getBan(777000)
```

```crystal
require "spamwatch"

token = "API_KEY"
client = SpamWatch::Client.new(token)

ban = client.get_ban(777000)
```

```csharp
using SpamWatch;

var client = new SpamWatch.Client("API_KEY");
var ban = client.GetBan(777000);
```

> The returned JSON:

```json
{
    "admin": 2,
    "date": 1570674252,
    "id": 777000,
    "reason": "Ban reason",
    "message": "abc"
}
```

Check the ban status of a specific User.

### HTTP Request

`GET https://api.spamwat.ch/banlist/$id`

### URL Parameters

Parameter | Description
--------- | -----------
$id | The id of the user to check

### Required permission level
User

<aside class="notice">
Read more about the permission levels <a href="#permissions">here</a>.
</aside>


## Getting all bans

```python
import spamwatch

client = spamwatch.Client('API_KEY')
bans = client.get_bans()
```

```javascript
const SpamWatch = require('spamwatch');

const client = new SpamWatch.Client("API_KEY");
let bans = client.getBans();
```

```crystal
require "spamwatch"

token = "API_KEY"
client = SpamWatch::Client.new(token)

bans = client.get_bans()
```

```csharp
using SpamWatch;

var client = new SpamWatch.Client("API_KEY");
var allBans = client.GetBans();

```

> The returned JSON:

```json
[
    {
        "admin": 2,
        "date": 1570416028,
        "id": 12345,
        "reason": "Ban reason 1"
    },
    {
        "admin": 2,
        "date": 1570416445,
        "id": 6789,
        "reason": "Ban reason 2",
        "message": "abc"
    }
]
```

This returns a list of all Bans.

### HTTP Request

`GET https://api.spamwat.ch/banlist`

### Required permission level
Root

<aside class="notice">
The `admin` field is the ID of the Token that the ban was issued with. It is not the User ID of the admin.
</aside>

## Getting a list of banned ids

```python
import spamwatch

client = spamwatch.Client('API_KEY')
bans = client.get_bans_min()
```

```javascript
// TODO
```

```crystal
// TODO
```

```csharp
using SpamWatch;

var client = new SpamWatch.Client("API_KEY");
var bans = client.GetBansMin();
```

> The returned Content:

```
12345
6789
```

This returns a newline seperated list of all Bans. This method currently ignores the `Accept` header and will always return a newline seperated list. In the future it might return a JSON with the corresponding content type.

### HTTP Request

`GET https://api.spamwat.ch/banlist/all`

### Required permission level
User

<aside class="notice">
This method is rate limited at 1 request every 5 minutes for the `User` permission level. If this is exceeded the API will return a 429 Error
</aside>

## Adding a ban

```python
import spamwatch

client = spamwatch.Client('API_KEY')
client.add_ban(777000, "reason", "message")
```

```javascript
const SpamWatch = require('spamwatch');

const client = new SpamWatch.Client("API_KEY");
client.addBan(777000, "reason")
```

```crystal
require "spamwatch"

token = "API_KEY"
client = SpamWatch::Client.new(token)

client.add_ban(777000, "reason")
```

```csharp
using SpamWatch;

var client = new SpamWatch.Client("API_KEY");
client.AddBan(777000, "reason");
```

### HTTP Request

`POST https://api.spamwat.ch/banlist`

### Headers
Key | Value
--- | -----
`Content-Type` | `application/json`

> Example Body

```json
[
    {
        "id": 12345,
        "reason": "Ban reason 1"
    },
    {
        "id": 6789,
        "reason": "Ban reason 2",
        "message": "abc"
    }
]
```

### JSON Body
A list of JSON Objects with the following keys:

Key | Value
--- | -----
`id` | The id of the User
`reason` | the reason for the ban

### Required permission level
Admin

<aside class="notice">
This method returns <code>204 No Content</code>
</aside>


## Deleting a ban

```python
import spamwatch

client = spamwatch.Client('API_KEY')
client.delete_ban(777000)
```

```javascript
const SpamWatch = require('spamwatch');

const client = new SpamWatch.Client("API_KEY");
client.deleteBan(777000)
```

```crystal
require "spamwatch"

token = "API_KEY"
client = SpamWatch::Client.new(token)

client.delete_ban(777000)
```

```csharp
using SpamWatch;

var client = new SpamWatch.Client("API_KEY");
client.DeleteBan(777000);
```

### HTTP Request

`DELETE https://api.spamwat.ch/banlist/$id`

### URL Parameters

Parameter | Description
--------- | -----------
id | The id of the user to delete

### Required permission level
Admin

<aside class="notice">
This method returns <code>204 No Content</code>
</aside>
