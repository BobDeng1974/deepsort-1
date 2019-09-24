PROJECT(deepsort)
CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

#set(tools /usr/bin)
#set(CMAKE_C_COMPILER ${tools}/aarch64-linux-gnu-gcc)
#set(CMAKE_CXX_COMPILER ${tools}/aarch64-linux-gnu-g++)

AUX_SOURCE_DIRECTORY(./errmsg DIR_SRCS_errmsg)
AUX_SOURCE_DIRECTORY(./thirdPart DIR_SRCS_hungarianoper)
AUX_SOURCE_DIRECTORY(./thirdPart/munkres DIR_SRCS_munkres)
AUX_SOURCE_DIRECTORY(./thirdPart/munkres/adapters DIR_SRCS_munkres_adapters)
AUX_SOURCE_DIRECTORY(./matching DIR_SRCS_matching)
AUX_SOURCE_DIRECTORY(./feature DIR_SRCS_feature)
AUX_SOURCE_DIRECTORY(./common DIR_SRCS_common)
AUX_SOURCE_DIRECTORY(./api DIR_SRCS_api)

include_directories(
./errmsg
./thirdPart
./thirdPart/Eigen
./thirdPart/munkres
./thirdPart/munkres/adapters
./matching
./feature
./common
./api
)

add_library(deepsort SHARED 
${DIR_SRCS_errmsg} 
${DIR_SRCS_hungarianoper} 
${DIR_SRCS_munkres} 
${DIR_SRCS_munkres_adapters} 
${DIR_SRCS_feature} 
${DIR_SRCS_matching} 
${DIR_SRCS_api}
)

include(CheckCXXCompilerFlag)  

