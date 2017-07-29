#!/bin/ash

cat /users | while read user pass uid gid; do
	addgroup -g $gid $user
	adduser -D -H -G $user -s /sbin/nologin -u $uid $user
	echo -e "$pass\n$pass" | smbpasswd -as $user
done

exec /usr/sbin/smbd -FS < /dev/null
