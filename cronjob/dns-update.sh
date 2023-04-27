#!/bin/bash
# This script updates (daily, active cronjob) the 3 dns lists
# in the 'dns' folder: big, medium and small.

path="/home/edoardottt/github/secfiles"

cd "$path"

git pull

rm -rf "$path/dns/trusted-resolvers-big.txt"
rm -rf "$path/dns/trusted-resolvers-medium.txt"
rm -rf "$path/dns/trusted-resolvers-small.txt"

date=$(date +%F)

dnsvalidator -tL https://public-dns.info/nameservers.txt -threads 100 -o "$path/dns/trusted-resolvers-big.txt"

sed -i~ -e '2,$b' -e '/^$/d' "$path/dns/trusted-resolvers-big.txt"

rm -rf "/home/edoardottt/github/secfiles/dns/trusted-resolvers-big.txt~"

cat "$path/dns/trusted-resolvers-big.txt" | head -n 1000 > "$path/dns/trusted-resolvers-medium.txt"

cat "$path/dns/trusted-resolvers-big.txt" | head -n 100 > "$path/dns/trusted-resolvers-small.txt"

sleep 30

git add .
git commit -m "$date - update dns"
git push

echo "secfiles - $date dns update" | notify
