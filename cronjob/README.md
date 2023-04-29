Every morning at 3 AM (Rome, CET) DNS files (big, medium and small) are updated.

```
0 3 * * * /home/edoardottt/github/secfiles/cronjob/dns-update.sh >/dev/null 2>&1
```

Required: [dnsvalidator](https://github.com/vortexau/dnsvalidator)
