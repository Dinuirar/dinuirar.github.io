#!/bin/bash

post_name="$1"

date_str="$(date)"

sed -i "s/<find_posts>/[$post_name](posts/$post_name.md) ($date)  \n<>" README.md

git add -A
git commit -m "add $post_name"
git push

