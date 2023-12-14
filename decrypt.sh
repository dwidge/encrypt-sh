#!/bin/bash
passphrase="$1"
encryptedFile="$2"
decryptedFile="$3"
gpg --decrypt --batch --yes --quiet --passphrase="$passphrase" --output "$decryptedFile" "$encryptedFile"
