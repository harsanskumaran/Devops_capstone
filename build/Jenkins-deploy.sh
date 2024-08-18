echo "started deploying docker image"
cd build
chmod +x deploy.sh
./deploy.sh
if [ $? -eq 0 ]; then
    echo "deploy successfully"
else
    echo "deploy failed"
fi
echo "===========================>"
