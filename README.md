# Windrose in docker for Unraid
This docker is made from copying server data from windroseserver docker (/home/ue_user/app/) into /serverdata. Until Windrose push the linux server into steamCMD, there's no other way to get it

**Configuration:** 
You must wait for the game to be fully initialize once, then shutdown the server to modify the config file.
NEVER MODIFY WHILE THE CONTAINER IS RUNNING.

There is 2 configuration file.

ServerDescription. (partial)
```json
{
		"IsPasswordProtected": true,
		"Password": "yourpassword",
		"UseDirectConnection": true,
		"DirectConnectionServerPort": 7777,
  }
}
```

To edit World configuration and settings, you edit the file WorldDescription.json. This file will be under a random named folder like R5/Saved/SaveProfiles/Default/RocksDB/<game version>/Worlds/<world document id>/WorldDescription.json
Reference: https://steamcommunity.com/sharedfiles/filedetails/?id=3706337486 


## Env params
| Name | Value | Example |
| --- | --- | --- |
| UID | User Identifier | 99 |
| GID | Group Identifier | 100 |


## Run example
```
docker run --name Windrose -d \
	--env 'UID=99' \
	--env 'GID=100' \
	--volume /path/to/savefile:/serverdata/R5/Saved \
	--volume /path/to/ServerDescription.json: /serverdata/R5/ServerDescription.json \
	nodiaque/windrose
```

This Docker was mainly edited for better use with Unraid, if you don't use Unraid you should definitely try it!


### Support Thread: https://forums.unraid.net/topic/151809-support-nodiaque-gameserver-docker
