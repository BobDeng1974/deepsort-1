cp CMakeLists_ordinary.txt tracker/src/CMakeLists.txt
cd tracker
sh makelib.sh

cd ..

cd darknet-master
make -j8

cd ..

sudo cp ./darknet-master/libdarknet.so ./
sudo cp ./tracker/libdeepsort.so ./

sudo cp libdarknet.so /usr/lib/
sudo cp libdeepsort.so /usr/lib/

cd code
make -j8

cd ..

cp code/yolo_console_dll ./
