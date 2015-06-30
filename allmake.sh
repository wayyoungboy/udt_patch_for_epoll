OLD_PWD="$( pwd )"

OS="LINUX"
#OS="OSX"

ARCH="IA32"

echo "" && echo "" && echo "[-------------------------------]" && echo "   udt4" && echo "[-------------------------------]" && \
    cd ./udt4/ && make -e os=$OS arch=$ARCH && \
echo "" && echo "" && echo "[-------------------------------]" && echo "   server_udt" && echo "[-------------------------------]" && \
    cd ../server_udt/ && make -e os=$OS arch=$ARCH && \
echo "" && echo "" && echo "[-------------------------------]" && echo "   server" && echo "[-------------------------------]" && \
    cd ../server/ && make -e os=$OS arch=$ARCH && \
echo "" && echo "" && echo "[-------------------------------]" && echo "   client_udt" && echo "[-------------------------------]" && \
    cd ../client_udt/ && make -e os=$OS arch=$ARCH \
echo "" && echo "" && echo "[-------------------------------]" && echo "   utest_server" && echo "[-------------------------------]" && \
    cd ../utest_server/ && make -e os=$OS arch=$ARCH

# restore old path.
cd $OLD_PWD
