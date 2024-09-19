#!/bin/bash

post_name="$1"

date_str="$(date)"

sed -i "s/#\ Posts:/&\n[${post_name}](posts\/${post_name}.md) (${date_str})  /g" README.md

git add -A
git commit -m "add $post_name"
git push

