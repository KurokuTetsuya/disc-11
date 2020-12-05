NODE_DIR=/tmp/node-v14.15.1-linux-x64

if [ -f "$NODE_DIR" ]; then
    echo "[INFO] $NODE_DIR exists. Continuing..." \
    $NODE_DIR/bin/npm run start
else
    echo "[INFO] Node v14 doesn't exists. Installing node..." \
    wget https://nodejs.org/dist/v14.15.1/node-v14.15.1-linux-x64.tar.xz -P /tmp \
    tar xf /tmp/node-v14.15.1-linux-x64.tar.xz \
    echo "[INFO] Installed Node v14. Continuing..." \
    $NODE_DIR/bin/npm run start
fi
