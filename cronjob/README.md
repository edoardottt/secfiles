Every morning at 5 AM (Rome, GMT+2) DNS files (big, medium and small) are updated.

```
0 5 * * * /home/edoardottt/github/secfiles/cronjob/dns-update.sh >/dev/null 2>&1
```

Required: [dnsvalidator](https://github.com/vortexau/dnsvalidator)
