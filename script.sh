# set path of lastest caffe and caffe in py-faster-rcnn
CAFFE_ROOT=/data1/public/caffe
CAFFE_FAST_RCNN=/data6/yunfeng/py-faster-rcnn/caffe-fast-rcnn

# copy head files
cp $CAFFE_ROOT/include/caffe/util/cudnn.hpp $CAFFE_FAST_RCNN/include/caffe/util/cudnn.hpp

cp $CAFFE_ROOT/include/caffe/layers/cudnn_conv_layer.hpp $CAFFE_FAST_RCNN/include/caffe/layers/cudnn_conv_layer.hpp
cp $CAFFE_ROOT/include/caffe/layers/cudnn_lcn_layer.hpp $CAFFE_FAST_RCNN/include/caffe/layers/cudnn_lcn_layer.hpp
cp $CAFFE_ROOT/include/caffe/layers/cudnn_lrn_layer.hpp $CAFFE_FAST_RCNN/include/caffe/layers/cudnn_lrn_layer.hpp
cp $CAFFE_ROOT/include/caffe/layers/cudnn_pooling_layer.hpp $CAFFE_FAST_RCNN/include/caffe/layers/cudnn_pooling_layer.hpp
cp $CAFFE_ROOT/include/caffe/layers/cudnn_relu_layer.hpp $CAFFE_FAST_RCNN/include/caffe/layers/cudnn_relu_layer.hpp
cp $CAFFE_ROOT/include/caffe/layers/cudnn_sigmoid_layer.hpp $CAFFE_FAST_RCNN/include/caffe/layers/cudnn_sigmoid_layer.hpp
cp $CAFFE_ROOT/include/caffe/layers/cudnn_softmax_layer.hpp $CAFFE_FAST_RCNN/include/caffe/layers/cudnn_softmax_layer.hpp
cp $CAFFE_ROOT/include/caffe/layers/cudnn_tanh_layer.hpp $CAFFE_FAST_RCNN/include/caffe/layers/cudnn_tanh_layer.hpp

# copy cpp files
cp $CAFFE_ROOT/src/caffe/layers/cudnn_conv_layer.cpp $CAFFE_FAST_RCNN/src/caffe/layers/cudnn_conv_layer.cpp
cp $CAFFE_ROOT/src/caffe/layers/cudnn_lcn_layer.cpp $CAFFE_FAST_RCNN/src/caffe/layers/cudnn_lcn_layer.cpp
cp $CAFFE_ROOT/src/caffe/layers/cudnn_lrn_layer.cpp $CAFFE_FAST_RCNN/src/caffe/layers/cudnn_lrn_layer.cpp
cp $CAFFE_ROOT/src/caffe/layers/cudnn_pooling_layer.cpp $CAFFE_FAST_RCNN/src/caffe/layers/cudnn_pooling_layer.cpp
cp $CAFFE_ROOT/src/caffe/layers/cudnn_relu_layer.cpp $CAFFE_FAST_RCNN/src/caffe/layers/cudnn_relu_layer.cpp
cp $CAFFE_ROOT/src/caffe/layers/cudnn_sigmoid_layer.cpp $CAFFE_FAST_RCNN/src/caffe/layers/cudnn_sigmoid_layer.cpp
cp $CAFFE_ROOT/src/caffe/layers/cudnn_softmax_layer.cpp $CAFFE_FAST_RCNN/src/caffe/layers/cudnn_softmax_layer.cpp
cp $CAFFE_ROOT/src/caffe/layers/cudnn_tanh_layer.cpp $CAFFE_FAST_RCNN/src/caffe/layers/cudnn_tanh_layer.cpp

# copy cu files
cp $CAFFE_ROOT/src/caffe/layers/cudnn_conv_layer.cu $CAFFE_FAST_RCNN/src/caffe/layers/cudnn_conv_layer.cu
cp $CAFFE_ROOT/src/caffe/layers/cudnn_lcn_layer.cu $CAFFE_FAST_RCNN/src/caffe/layers/cudnn_lcn_layer.cu
cp $CAFFE_ROOT/src/caffe/layers/cudnn_lrn_layer.cu $CAFFE_FAST_RCNN/src/caffe/layers/cudnn_lrn_layer.cu
cp $CAFFE_ROOT/src/caffe/layers/cudnn_pooling_layer.cu $CAFFE_FAST_RCNN/src/caffe/layers/cudnn_pooling_layer.cu
cp $CAFFE_ROOT/src/caffe/layers/cudnn_relu_layer.cu $CAFFE_FAST_RCNN/src/caffe/layers/cudnn_relu_layer.cu
cp $CAFFE_ROOT/src/caffe/layers/cudnn_sigmoid_layer.cu $CAFFE_FAST_RCNN/src/caffe/layers/cudnn_sigmoid_layer.cu
cp $CAFFE_ROOT/src/caffe/layers/cudnn_softmax_layer.cu $CAFFE_FAST_RCNN/src/caffe/layers/cudnn_softmaxlayer.cu
cp $CAFFE_ROOT/src/caffe/layers/cudnn_tanh_layer.cu $CAFFE_FAST_RCNN/src/caffe/layers/cudnn_tanh_layer.cu


# update source code using v3 of cudnn
sed -i 's/cudnnConvolutionBackwardData_v3/cudnnConvolutionBackwardData/g' $CAFFE_FAST_RCNN/src/caffe/layers/cudnn_conv_layer.cu
sed -i 's/cudnnConvolutionBackwardFilter_v3/cudnnConvolutionBackwardFilter/g' $CAFFE_FAST_RCNN/src/caffe/layers/cudnn_conv_layer.cu
