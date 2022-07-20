#!/bin/bash

path="/home/edoardottt/github/secfiles"

cd "$path"

rm -rf "$path/dns"

mkdir "$path/dns"

date=$(date +%F)

dnsvalidator -tL https://public-dns.info/nameservers.txt -threads 100 -o "$path/dns/resolvers-big.txt"

sed -i~ -e '2,$b' -e '/^$/d' "$path/dns/resolvers-big.txt"

rm -rf "/home/edoardottt/github/secfiles/dns/resolvers-big.txt~"

git add . && git commit -m "$date - update dns resolvers big" && git push

cat "$path/dns/resolvers-big.txt" | head -n 400 > "$path/dns/resolvers-medium.txt"

git add . && git commit -m "$date - update dns resolvers medium" && git push

cat "$path/dns/resolvers-big.txt" | head -n 30 > "$path/dns/resolvers-small.txt"

git add . && git commit -m "$date - update dns resolvers small" && git push

echo "secfiles - $date dns update" | notify