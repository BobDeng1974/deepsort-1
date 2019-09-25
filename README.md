# deepsort
deepsort using hog feature extractor and darknet
<pre>
usage 
sudo ./clean.sh
make.sh
</pre>
if you want to compile it for aarch64 devices then uncomment 4,5,6 th lines in tracer/src/CMakeLists.txt

if you have errors put this line in the bottom of tracer/src/CMakeLists.txt

CHECK_CXX_COMPILER_FLAG("-std=c++11" COMPILER_SUPPORTS_CXX11)  
CHECK_CXX_COMPILER_FLAG("-std=c++0x" COMPILER_SUPPORTS_CXX0X)  
if(COMPILER_SUPPORTS_CXX11)  
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")  
elseif(COMPILER_SUPPORTS_CXX0X)  
        set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")  
else()  
     message(STATUS "The compiler ${CMAKE_CXX_COMPILER} has no C++11 support. Please use a different C++ compiler.")  
endif()  

<pre>
references:
https://github.com/AlexeyAB/darknet
https://github.com/sephirothhua/DeepSort_yoloV3-HOG_feature
</pre>

to do:
1. using one shot learning based deep learning feature extractor
