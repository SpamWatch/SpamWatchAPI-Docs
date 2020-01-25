# Banlist

## Get all bans

```python
import spamwatch

client = spamwatch.Client('API_KEY')
bans = client.get_bans()
```

```javascript
const SpamWatch = require('spamwatch');

const client = new SpamWatch.Client("API_KEY");
let bans = client.getBans()
```

```shell
curl "https://api.spamwat.ch/banlist"
  -H "Authorization: Bearer API_KEY"
```

> This will return the following:

```python
[<Ban: {'id': 12345, 'reason': 'Ban reason 1', 'date': datetime.datetime(2020, 1, 25, 3, 29, 17), 'timestamp': 1579919357, 'admin': 1}>,
 <Ban: {'id': 6789, 'reason': 'Ban reason 2', 'date': datetime.datetime(2020, 1, 25, 3, 29, 17), 'timestamp': 1579919357, 'admin': 1}>]
```

```javascript

```

> The raw json:

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
        "reason": "Ban reason 2"
    }
]
```

This returns a list of all Bans.

### HTTP Request

`GET https://api.spamwat.ch/banlist`

### Required permission level
Root

<aside class="notice">
Read more about the permission levels <a href="#permissions">here</a>.
</aside>
<aside class="notice">
The "admin" field is the ID of the Token that the ban was issued with. It is not the User ID of the admin.
</aside>


## Get a specific ban

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

```shell
curl "https://api.spamwat.ch/banlist/777000"
  -H "Authorization: Bearer API_KEY"
```

> This will return the following:

```python
<Ban: {'id': 12345,
       'reason': 'Ban reason 1',
       'date': datetime.datetime(2020, 1, 25, 3, 29, 17),
       'timestamp': 1579919357, 'admin': 1}>
```

```javascript
```

> The raw json:

```json
{
    "admin": 2,
    "date": 1570674252,
    "id": 777000,
    "reason": "Ban reason"
}
```

Check the ban status of a specific User.

### HTTP Request

`GET https://api.spamwat.ch/banlist/<ID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the user to check

## Adding a ban

```python
import spamwatch

client = spamwatch.Client('API_KEY')
client.add_ban(777000, "reason")
```

```javascript
const SpamWatch = require('spamwatch');

const client = new SpamWatch.Client("API_KEY");
client.addBan(777000, "reason")
```

```shell
curl "https://api.spamwat.ch/banlist"
  -X POST
  -H "Authorization: Bearer API_KEY"
```

### HTTP Request

`POST https://api.spamwat.ch/banlist`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the user to delete

## Delete a ban

```python
import spamwatch

client = spamwatch.Client('API_KEY')
ban = client.delete_ban(777000)
```

```javascript
const SpamWatch = require('spamwatch');

const client = new SpamWatch.Client("API_KEY");
let ban = client.deleteBan(777000)
```

```shell
curl "https://api.spamwat.ch/banlist/777000"
  -X DELETE
  -H "Authorization: Bearer API_KEY"
```

### HTTP Request

`DELETE https://api.spamwat.ch/banlist/<ID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the user to delete

<aside class="notice">
This method returns <code>204 No Content</code>
</aside>
