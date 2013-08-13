#!/bin/sh

TMP=/tmp/data_html_strip_tags-temp.html
echo "" > $TMP
while read input; do
    echo $input >> $TMP
done

lynx -dump $TMP