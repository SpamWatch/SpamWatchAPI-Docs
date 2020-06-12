# Permissions
Each endpoint (except `/version`) requires a certain permission level. The required level is mentioned in the documentation of the endpoint.

The API has three permission levels:

Level | Rights
---------- | -------
[Root](#root) | Can do everything
[Admin](#admin) | Can query and update the banlist
[User](#user) | Can query the Banlist

To find out your Tokens Permission level go here: <a href="#getting-your-own-token">Getting your own Token</a> 

## Root
Root is the highest permission level. A token with Root permission can do the following:

### `/banlist`
Request | Path
------- | ----
GET | [`/banlist`](#getting-all-bans)
GET | [`/banlist/all`](#getting-a-list-of-banned-ids)
GET | [`/banlist/$id`](#getting-a-specific-ban)
POST | [`/banlist`](#adding-a-ban)
DELETE | [`/banlist/$id`](#deleting-a-ban)

### `/tokens`
Request | Path
------- | ----
GET | [`/tokens`](#getting-all-tokens)
GET | [`/tokens/$id`](#getting-a-specific-token)
POST | [`/tokens`](#creating-a-token)
DELETE | [`/tokens/$id`](#retiring-a-specific-token)

### `/`
Request | Path
------- | ----
GET | [`/version`](#getting-the-api-version)
GET | [`/stats`](#getting-some-stats)

## Admin
A token with Admin permission can do the following:

### `/banlist`
Request | Path
------- | ----
GET | [`/banlist/all`](#getting-a-list-of-banned-ids)
GET | [`/banlist/$id`](#getting-a-specific-ban)
POST | [`/banlist`](#adding-a-ban)
DELETE | [`/banlist/$id`](#deleting-a-ban)

### `/`
Request | Path
------- | ----
GET | [`/version`](#getting-the-api-version)
GET | [`/stats`](#getting-some-stats)

## User
A token with User permission can do the following:

### `/banlist`
Request | Path
------- | ----
GET | [`/banlist/all`](#getting-a-list-of-banned-ids)
GET | [`/banlist/$id`](#getting-a-specific-ban)

### `/`
Request | Path
------- | ----
GET | [`/version`](#getting-the-api-version)
GET | [`/stats`](#getting-some-stats)
