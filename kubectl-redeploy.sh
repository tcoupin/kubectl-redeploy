#!/bin/bash

function usage() {
  cat <<EOF
Description:
  'kubectl redeploy NAME [OTHER_OPTIONS]' trigger a redeploy.
Commands:
  NAME - name of the deployment
  OTHER_OPTIONS  - any option of 'kubectl patch' CLI argument or flag
EOF
}

NAME=$1

if [ -z "$NAME" ]
then
  usage
  exit 1
fi

shift
kubectl patch deployment $NAME -p "{\"spec\": {\"template\": {\"metadata\": { \"labels\": {  \"redeploy\": \"$(date +%s)\"}}}}}" $@
