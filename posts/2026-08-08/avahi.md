---
title: .local inside incus containers
---

I used to have a `/etc/host` that lists all my computers but with time that always got outdated, and sometimes out of sync with the DHCP server on my router.
For a brief period I tried with a subordinate DNS server, but that didn't really work well with Android for some reason I couldn't figure out. So I changed
to install `avahi` on all my computers to provide `<computername>.local` names. Good thing is that `avahi` works out of the box for Android. Sadly not for
the two Windows 10 gaming computers that two of my sons uses. (No Fortnite on Linux.)

But for some reason `.local` names didn't work inside `incus` containers, despite installing `avahi` & co. Earlier today I did ask an LLM why, and it said:

*On the host, edit `/etc/avahi/avahi-daemon.conf` and make sure you have set `enable-reflector` to `yes`, like this:*

```ini
[reflector]
enable-reflector=yes
```

And after `sudo systemctl restart avahi-daemon`, `.local` names started to work inside `incus` containers.
