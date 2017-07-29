# docker-samba

1. Create your smb.conf file
2. Create your user file. It should be formatted like so:
```
username password uid gid
username2 password2 uid2 gid2
...
```

To run:
```
docker run \
	--name samba \
	-v /opt/samba/users:/users:ro \
	-v /opt/samba/smb.conf:/etc/samba/smb.conf:ro \
	-v /data:/data \
	-p 139:139 -p 445:445 \
	kmlucy/docker-samba
```
	
