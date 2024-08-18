echo "started building docker image"
cd build
chmod +x build.sh
./build.sh
if [ $? -eq 0 ]; then
    echo "Build successfully"
else
    echo "Build failed"
fi
echo "===========================>"
