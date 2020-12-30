#! /bin/bash
baseDir=$(dirname $0)
configDir="${baseDir}/configs"
config="${configDir}/client.ovpn"
passfile="${configDir}/pass_file"
gauth=`oathtool -b --totp "SHARED_GAUTH_PASSPHRASE" | tr -d '\n'`

echo ${baseDir}/ovpn_helper $config $passfile $gauth
${baseDir}/ovpn_helper $config $passfile $gauth
