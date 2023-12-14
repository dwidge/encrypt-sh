#!/bin/bash
passphrase="$1"
encryptedDir="$2"
decryptedDir="$3"
here="${BASH_SOURCE%/*}"
$here/loop-dir.sh $encryptedDir "mkdir -p $decryptedDir/\$(dirname \$file) && $here/decrypt.sh \"$passphrase\" $encryptedDir/\$file $decryptedDir/\$file"
