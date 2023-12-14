#!/bin/bash
passphrase="$1"
encryptedDir="$2"
decryptedDir="$3"
here="${BASH_SOURCE%/*}"
$here/loop-dir.sh $decryptedDir "mkdir -p $encryptedDir/\$(dirname \$file) && $here/encrypt.sh $passphrase $encryptedDir/\$file $decryptedDir/\$file"
