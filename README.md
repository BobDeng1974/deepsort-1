# deepsort
deepsort using hog feature extractor and darknet
<pre>
usage 
0.1 chmod a+x make_ordinary.sh
0.2 chmod a+x make_jetson.sh
0.3 chmod a+x clean.sh
2. sudo ./clean.sh
3. make_ordinary.sh
4. download weight files from https://github.com/AlexeyAB/darknet
5. ./yolo_console_dll {names file} {cfg file} {weights file} {video file or web_camera for web camera} {skip rate} {thresh} 
</pre>
if you want to compile it for aarch64 devices then go with make_jetson.sh
<pre>
references:
https://github.com/AlexeyAB/darknet
https://github.com/sephirothhua/DeepSort_yoloV3-HOG_feature
</pre>

to do:
1. using one shot learning based deep learning feature extractor
