#!/bin/sh
if [ ! -f UUID ]; then
  UUID="e07cab88-f0b6-4978-890f-d422dcd24958"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

