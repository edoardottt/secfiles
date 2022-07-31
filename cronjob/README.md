Every morning at 6 AM (Rome, GMT+2) DNS files are updated.

```
0 6 * * * /home/edoardottt/github/secfiles/cronjob/dns-update.sh >/dev/null 2>&1
```

Required: [dnsvalidator](https://github.com/vortexau/dnsvalidator)
