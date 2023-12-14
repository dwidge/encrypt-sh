#!/bin/bash
gpg --decrypt --batch --yes --quiet --passphrase="$1" --output "$3" "$2"
