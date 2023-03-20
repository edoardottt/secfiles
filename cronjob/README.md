Every morning at 4 AM (Rome, CET) DNS files (big, medium and small) are updated.

```
0 4 * * * /home/edoardottt/github/secfiles/cronjob/dns-update.sh >/dev/null 2>&1
```

Required: [dnsvalidator](https://github.com/vortexau/dnsvalidator)
