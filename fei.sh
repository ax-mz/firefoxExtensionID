#!/bin/bash

#/ Usage: ./fei.sh [EXTENSION NAME]

usage(){
	grep -e "^#/" $0 | cut -c4-
}

if [ -z $1 ];
then
	usage
	exit 1
fi

ext_name=$1
dest="/tmp/fei-$(date +%m%d%y%H%M%S)-${ext_name}"
curl -s https://addons.mozilla.org/en-US/firefox/addon/${ext_name}/ -o "$dest"

# Check if the extension exists
if grep -q "Card Errors NotFound Card--no-footer" "$dest";
then
	echo "no result for \"${ext_name}\" on https://addons.mozilla.org"
	rm "$dest"
	exit 1
fi

# grep for the ID in the extension web page
ext_id=$(grep -oP '(?<=guid":").*?(?=")' "$dest")
if [ -z $ext_id ];
then
  echo "no id found"
  rm "$dest"
  exit 1
fi

echo -e "ID found:\n${ext_id}"
rm "$dest"
