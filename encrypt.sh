#!/bin/bash
passphrase="$1"
encryptedFile="$2"
decryptedFile="$3"
gpg --batch --yes --quiet -c --passphrase="$passphrase" --output "$encryptedFile" "$decryptedFile"
