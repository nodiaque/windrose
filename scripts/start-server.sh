#!/bin/bash
echo "---Prepare Server---"
chmod -R ${DATA_PERM} ${CONFIG_FILE}
chmod -R ${DATA_PERM} ${SAVE_DIR}

echo "---Server ready---"

echo "---Start Server---"
cd ${DATA_DIR}
./WindroseServer.sh
