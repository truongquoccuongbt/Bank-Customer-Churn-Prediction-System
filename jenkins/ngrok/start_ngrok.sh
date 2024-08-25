#!/bin/sh
# Run example: start-ngrok.sh 1234
# Set local port from command line arg or default to 8080
# source my_custom.env
# LOCAL_PORT=${1-8080}

# echo "Start ngrok in background on port [ $LOCAL_PORT ]"
# nohup ngrok http ${LOCAL_PORT} &>/dev/null &

# echo -n "Extracting ngrok public url ."
# NGROK_PUBLIC_URL=""
# while [ -z "$NGROK_PUBLIC_URL" ]; do
#   # Run 'curl' against ngrok API and extract public (using 'sed' command)
#   export NGROK_PUBLIC_URL=$(curl --silent --max-time 10 --connect-timeout 5 \
#                             --show-error http://127.0.0.1:4040/api/tunnels | \
#                             sed -nE 's/.*public_url":"https:..([^"]*).*/\1/p')
#   sleep 1
#   echo -n "."
# done

# echo
# echo "NGROK_PUBLIC_URL => [ $NGROK_PUBLIC_URL ]"


echo -n "Extracting hook ids ."
ID_HOOK=""
while [ -z "$ID_HOOK" ]; do
  echo $(curl -L --silent --max-time 10 --connect-timeout 5  \
    -H "Accept: application/vnd.github+json"   \
    -H "Authorization: Bearer"   \
    -H "X-GitHub-Api-Version: 2022-11-28"  \
    https://api.github.com/repos/truongquoccuongbt/Bank-Customer-Churn-Prediction/hooks |
    sed -nE 's/.*id":"([0-9"]*).*/\1/p')

  #   sleep 1
  #   echo -n "."
done
echo "HOOK_ID => [ $ID_HOOK ]"