cd darknet-master
make clean

cd ../tracker
sh clean.sh


cd ..
rm tracker/src/CMakeLists.txt
rm yolo_console_dll
rm code/yolo_console_dll
rm ./code/*.o
rm *.so
