node {
  name: "lr"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
}
node {
  name: "pkeep"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
}
node {
  name: "batchsize"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
}
node {
  name: "X"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_UINT8
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
}
node {
  name: "one_hot/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "one_hot/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "one_hot/depth"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 98
      }
    }
  }
}
node {
  name: "one_hot/on_value"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "one_hot/off_value"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "one_hot"
  op: "OneHot"
  input: "X"
  input: "one_hot/depth"
  input: "one_hot/on_value"
  input: "one_hot/off_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "TI"
    value {
      type: DT_UINT8
    }
  }
  attr {
    key: "axis"
    value {
      i: -1
    }
  }
}
node {
  name: "Y_"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_UINT8
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
}
node {
  name: "one_hot_1/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "one_hot_1/Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "one_hot_1/depth"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 98
      }
    }
  }
}
node {
  name: "one_hot_1/on_value"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "one_hot_1/off_value"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "one_hot_1"
  op: "OneHot"
  input: "Y_"
  input: "one_hot_1/depth"
  input: "one_hot_1/on_value"
  input: "one_hot_1/off_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "TI"
    value {
      type: DT_UINT8
    }
  }
  attr {
    key: "axis"
    value {
      i: -1
    }
  }
}
node {
  name: "Hin"
  op: "Placeholder"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
}
node {
  name: "transpose/perm"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 3
          }
        }
        tensor_content: "\001\000\000\000\000\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "transpose"
  op: "Transpose"
  input: "one_hot"
  input: "transpose/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "RNN/Shape"
  op: "Shape"
  input: "transpose"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "RNN/strided_slice/pack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "RNN/strided_slice/pack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "RNN/strided_slice/pack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "RNN/strided_slice"
  op: "StridedSlice"
  input: "RNN/Shape"
  input: "RNN/strided_slice/pack"
  input: "RNN/strided_slice/pack_1"
  input: "RNN/strided_slice/pack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "RNN/strided_slice_1/pack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "RNN/strided_slice_1/pack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "RNN/strided_slice_1/pack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "RNN/strided_slice_1"
  op: "StridedSlice"
  input: "RNN/Shape"
  input: "RNN/strided_slice_1/pack"
  input: "RNN/strided_slice_1/pack_1"
  input: "RNN/strided_slice_1/pack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "RNN/Shape_1"
  op: "Shape"
  input: "transpose"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "RNN/strided_slice_2/pack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "RNN/strided_slice_2/pack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "RNN/strided_slice_2/pack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "RNN/strided_slice_2"
  op: "StridedSlice"
  input: "RNN/Shape_1"
  input: "RNN/strided_slice_2/pack"
  input: "RNN/strided_slice_2/pack_1"
  input: "RNN/strided_slice_2/pack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "RNN/strided_slice_3/pack"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "RNN/strided_slice_3/pack_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "RNN/strided_slice_3/pack_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "RNN/strided_slice_3"
  op: "StridedSlice"
  input: "RNN/Shape_1"
  input: "RNN/strided_slice_3/pack"
  input: "RNN/strided_slice_3/pack_1"
  input: "RNN/strided_slice_3/pack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "RNN/pack/1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 512
      }
    }
  }
}
node {
  name: "RNN/pack"
  op: "Pack"
  input: "RNN/strided_slice_3"
  input: "RNN/pack/1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "RNN/zeros/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/zeros"
  op: "Fill"
  input: "RNN/pack"
  input: "RNN/zeros/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/time"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "RNN/TensorArray"
  op: "TensorArray"
  input: "RNN/strided_slice_2"
  attr {
    key: "clear_after_read"
    value {
      b: true
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "dynamic_size"
    value {
      b: false
    }
  }
  attr {
    key: "tensor_array_name"
    value {
      s: "RNN/dynamic_rnn/output_0"
    }
  }
}
node {
  name: "RNN/TensorArray/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/TensorArray_1"
  op: "TensorArray"
  input: "RNN/strided_slice_2"
  attr {
    key: "clear_after_read"
    value {
      b: true
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "dynamic_size"
    value {
      b: false
    }
  }
  attr {
    key: "tensor_array_name"
    value {
      s: "RNN/dynamic_rnn/input_0"
    }
  }
}
node {
  name: "RNN/TensorArray_1/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray_1"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/TensorArrayPack/Shape"
  op: "Shape"
  input: "transpose"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray_1"
      }
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "RNN/TensorArrayPack/strided_slice/pack"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray_1"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "RNN/TensorArrayPack/strided_slice/pack_1"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray_1"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "RNN/TensorArrayPack/strided_slice/pack_2"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray_1"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "RNN/TensorArrayPack/strided_slice"
  op: "StridedSlice"
  input: "RNN/TensorArrayPack/Shape"
  input: "RNN/TensorArrayPack/strided_slice/pack"
  input: "RNN/TensorArrayPack/strided_slice/pack_1"
  input: "RNN/TensorArrayPack/strided_slice/pack_2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray_1"
      }
    }
  }
  attr {
    key: "begin_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "ellipsis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "end_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "new_axis_mask"
    value {
      i: 0
    }
  }
  attr {
    key: "shrink_axis_mask"
    value {
      i: 1
    }
  }
}
node {
  name: "RNN/TensorArrayPack/range/start"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray_1"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "RNN/TensorArrayPack/range/delta"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray_1"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "RNN/TensorArrayPack/range"
  op: "Range"
  input: "RNN/TensorArrayPack/range/start"
  input: "RNN/TensorArrayPack/strided_slice"
  input: "RNN/TensorArrayPack/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray_1"
      }
    }
  }
}
node {
  name: "RNN/TensorArrayPack/TensorArrayScatter"
  op: "TensorArrayScatter"
  input: "RNN/TensorArray_1"
  input: "RNN/TensorArrayPack/range"
  input: "transpose"
  input: "RNN/TensorArray_1/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray_1"
      }
    }
  }
}
node {
  name: "RNN/TensorArrayPack/TensorArray/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray_1"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/while/Enter"
  op: "Enter"
  input: "RNN/time"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "RNN/while/Enter_1"
  op: "Enter"
  input: "RNN/TensorArray/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "RNN/while/Enter_2"
  op: "Enter"
  input: "Hin"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "RNN/while/Merge"
  op: "Merge"
  input: "RNN/while/Enter"
  input: "RNN/while/NextIteration"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "RNN/while/Merge_1"
  op: "Merge"
  input: "RNN/while/Enter_1"
  input: "RNN/while/NextIteration_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/Merge_2"
  op: "Merge"
  input: "RNN/while/Enter_2"
  input: "RNN/while/NextIteration_2"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/Less/Enter"
  op: "Enter"
  input: "RNN/strided_slice_2"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "RNN/while/Less"
  op: "Less"
  input: "RNN/while/Merge"
  input: "RNN/while/Less/Enter"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "RNN/while/LoopCond"
  op: "LoopCond"
  input: "RNN/while/Less"
}
node {
  name: "RNN/while/Switch"
  op: "Switch"
  input: "RNN/while/Merge"
  input: "RNN/while/LoopCond"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/Merge"
      }
    }
  }
}
node {
  name: "RNN/while/Switch_1"
  op: "Switch"
  input: "RNN/while/Merge_1"
  input: "RNN/while/LoopCond"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/Merge_1"
      }
    }
  }
}
node {
  name: "RNN/while/Switch_2"
  op: "Switch"
  input: "RNN/while/Merge_2"
  input: "RNN/while/LoopCond"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/Merge_2"
      }
    }
  }
}
node {
  name: "RNN/while/Identity"
  op: "Identity"
  input: "RNN/while/Switch:1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "RNN/while/Identity_1"
  op: "Identity"
  input: "RNN/while/Switch_1:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/Identity_2"
  op: "Identity"
  input: "RNN/while/Switch_2:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/TensorArrayRead/RefEnter"
  op: "RefEnter"
  input: "RNN/TensorArray_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "RNN/while/TensorArrayRead/Enter"
  op: "Enter"
  input: "RNN/TensorArrayPack/TensorArrayScatter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "RNN/while/TensorArrayRead"
  op: "TensorArrayRead"
  input: "RNN/while/TensorArrayRead/RefEnter"
  input: "RNN/while/Identity"
  input: "RNN/while/TensorArrayRead/Enter"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray_1"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/Slice/begin"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\000\000\000"
      }
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/Slice/size"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\377\377\377\377\000\002\000\000"
      }
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/Slice"
  op: "Slice"
  input: "RNN/while/Identity_2"
  input: "RNN/while/MultiRNNCell/Cell0/Slice/begin"
  input: "RNN/while/MultiRNNCell/Cell0/Slice/size"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/dropout/Shape"
  op: "Shape"
  input: "RNN/while/TensorArrayRead"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/dropout/random_uniform/min"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/dropout/random_uniform/max"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/dropout/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/Shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 81
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/dropout/random_uniform/sub"
  op: "Sub"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/random_uniform/max"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/dropout/random_uniform/mul"
  op: "Mul"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/random_uniform/RandomUniform"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/dropout/random_uniform"
  op: "Add"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/random_uniform/mul"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/dropout/add/Enter"
  op: "Enter"
  input: "pkeep"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/dropout/add"
  op: "Add"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/add/Enter"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/dropout/Floor"
  op: "Floor"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/dropout/Div"
  op: "Div"
  input: "RNN/while/TensorArrayRead"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/add/Enter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/dropout/mul"
  op: "Mul"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/Div"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/Floor"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
  op: "Variable"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 610
        }
        dim {
          size: 1024
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "b\002\000\000\000\004\000\000"
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.07012868672609329
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.07012868672609329
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 94
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/sub"
  op: "Sub"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/max"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/mul"
  op: "Mul"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/RandomUniform"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform"
  op: "Add"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/mul"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat/concat_dim"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat"
  op: "Concat"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat/concat_dim"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/mul"
  input: "RNN/while/MultiRNNCell/Cell0/Slice"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul/Enter"
  op: "Enter"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul"
  op: "MatMul"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul/Enter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias"
  op: "Variable"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1024
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1024
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add/Enter"
  op: "Enter"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add"
  op: "Add"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add/Enter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split/split_dim"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split"
  op: "Split"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split/split_dim"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "num_split"
    value {
      i: 2
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Sigmoid"
  op: "Sigmoid"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Sigmoid_1"
  op: "Sigmoid"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul"
  op: "Mul"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Sigmoid"
  input: "RNN/while/MultiRNNCell/Cell0/Slice"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
  op: "Variable"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 610
        }
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "b\002\000\000\000\002\000\000"
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.07012868672609329
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.07012868672609329
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 119
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/sub"
  op: "Sub"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/max"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/mul"
  op: "Mul"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/RandomUniform"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform"
  op: "Add"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/mul"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat/concat_dim"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat"
  op: "Concat"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat/concat_dim"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/mul"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul/Enter"
  op: "Enter"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul"
  op: "MatMul"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul/Enter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias"
  op: "Variable"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add/Enter"
  op: "Enter"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add"
  op: "Add"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add/Enter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Tanh"
  op: "Tanh"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/GRUCell/mul"
  op: "Mul"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Sigmoid_1"
  input: "RNN/while/MultiRNNCell/Cell0/Slice"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/GRUCell/sub/x"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/GRUCell/sub"
  op: "Sub"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/sub/x"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Sigmoid_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1"
  op: "Mul"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/sub"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Tanh"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell0/GRUCell/add"
  op: "Add"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/mul"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/Slice/begin"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\002\000\000"
      }
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/Slice/size"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\377\377\377\377\000\002\000\000"
      }
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/Slice"
  op: "Slice"
  input: "RNN/while/Identity_2"
  input: "RNN/while/MultiRNNCell/Cell1/Slice/begin"
  input: "RNN/while/MultiRNNCell/Cell1/Slice/size"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/dropout/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/dropout/random_uniform/min"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/dropout/random_uniform/max"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/dropout/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "RNN/while/MultiRNNCell/Cell1/dropout/Shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 147
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/dropout/random_uniform/sub"
  op: "Sub"
  input: "RNN/while/MultiRNNCell/Cell1/dropout/random_uniform/max"
  input: "RNN/while/MultiRNNCell/Cell1/dropout/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/dropout/random_uniform/mul"
  op: "Mul"
  input: "RNN/while/MultiRNNCell/Cell1/dropout/random_uniform/RandomUniform"
  input: "RNN/while/MultiRNNCell/Cell1/dropout/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/dropout/random_uniform"
  op: "Add"
  input: "RNN/while/MultiRNNCell/Cell1/dropout/random_uniform/mul"
  input: "RNN/while/MultiRNNCell/Cell1/dropout/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/dropout/add"
  op: "Add"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/add/Enter"
  input: "RNN/while/MultiRNNCell/Cell1/dropout/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/dropout/Floor"
  op: "Floor"
  input: "RNN/while/MultiRNNCell/Cell1/dropout/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/dropout/Div"
  op: "Div"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/add"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/add/Enter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/dropout/mul"
  op: "Mul"
  input: "RNN/while/MultiRNNCell/Cell1/dropout/Div"
  input: "RNN/while/MultiRNNCell/Cell1/dropout/Floor"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
  op: "Variable"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1024
        }
        dim {
          size: 1024
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\004\000\000\000\004\000\000"
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.05412658676505089
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.05412658676505089
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 159
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/sub"
  op: "Sub"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/max"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/mul"
  op: "Mul"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/RandomUniform"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform"
  op: "Add"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/mul"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat/concat_dim"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat"
  op: "Concat"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat/concat_dim"
  input: "RNN/while/MultiRNNCell/Cell1/dropout/mul"
  input: "RNN/while/MultiRNNCell/Cell1/Slice"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul/Enter"
  op: "Enter"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul"
  op: "MatMul"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul/Enter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias"
  op: "Variable"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1024
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1024
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add/Enter"
  op: "Enter"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add"
  op: "Add"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add/Enter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split/split_dim"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split"
  op: "Split"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split/split_dim"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "num_split"
    value {
      i: 2
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Sigmoid"
  op: "Sigmoid"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Sigmoid_1"
  op: "Sigmoid"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul"
  op: "Mul"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Sigmoid"
  input: "RNN/while/MultiRNNCell/Cell1/Slice"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
  op: "Variable"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1024
        }
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\004\000\000\000\002\000\000"
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.05412658676505089
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.05412658676505089
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 184
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/sub"
  op: "Sub"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/max"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/mul"
  op: "Mul"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/RandomUniform"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform"
  op: "Add"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/mul"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat/concat_dim"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat"
  op: "Concat"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat/concat_dim"
  input: "RNN/while/MultiRNNCell/Cell1/dropout/mul"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul/Enter"
  op: "Enter"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul"
  op: "MatMul"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul/Enter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias"
  op: "Variable"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add/Enter"
  op: "Enter"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add"
  op: "Add"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add/Enter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Tanh"
  op: "Tanh"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/GRUCell/mul"
  op: "Mul"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Sigmoid_1"
  input: "RNN/while/MultiRNNCell/Cell1/Slice"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/GRUCell/sub/x"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/GRUCell/sub"
  op: "Sub"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/sub/x"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Sigmoid_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1"
  op: "Mul"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/sub"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Tanh"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell1/GRUCell/add"
  op: "Add"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/mul"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/Slice/begin"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\000\004\000\000"
      }
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/Slice/size"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\377\377\377\377\000\002\000\000"
      }
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/Slice"
  op: "Slice"
  input: "RNN/while/Identity_2"
  input: "RNN/while/MultiRNNCell/Cell2/Slice/begin"
  input: "RNN/while/MultiRNNCell/Cell2/Slice/size"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/dropout/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/dropout/random_uniform/min"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/dropout/random_uniform/max"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/dropout/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "RNN/while/MultiRNNCell/Cell2/dropout/Shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 212
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/dropout/random_uniform/sub"
  op: "Sub"
  input: "RNN/while/MultiRNNCell/Cell2/dropout/random_uniform/max"
  input: "RNN/while/MultiRNNCell/Cell2/dropout/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/dropout/random_uniform/mul"
  op: "Mul"
  input: "RNN/while/MultiRNNCell/Cell2/dropout/random_uniform/RandomUniform"
  input: "RNN/while/MultiRNNCell/Cell2/dropout/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/dropout/random_uniform"
  op: "Add"
  input: "RNN/while/MultiRNNCell/Cell2/dropout/random_uniform/mul"
  input: "RNN/while/MultiRNNCell/Cell2/dropout/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/dropout/add"
  op: "Add"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/add/Enter"
  input: "RNN/while/MultiRNNCell/Cell2/dropout/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/dropout/Floor"
  op: "Floor"
  input: "RNN/while/MultiRNNCell/Cell2/dropout/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/dropout/Div"
  op: "Div"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/add"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/add/Enter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/dropout/mul"
  op: "Mul"
  input: "RNN/while/MultiRNNCell/Cell2/dropout/Div"
  input: "RNN/while/MultiRNNCell/Cell2/dropout/Floor"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
  op: "Variable"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1024
        }
        dim {
          size: 1024
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\004\000\000\000\004\000\000"
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.05412658676505089
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.05412658676505089
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 224
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/sub"
  op: "Sub"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/max"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/mul"
  op: "Mul"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/RandomUniform"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform"
  op: "Add"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/mul"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat/concat_dim"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat"
  op: "Concat"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat/concat_dim"
  input: "RNN/while/MultiRNNCell/Cell2/dropout/mul"
  input: "RNN/while/MultiRNNCell/Cell2/Slice"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul/Enter"
  op: "Enter"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul"
  op: "MatMul"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul/Enter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias"
  op: "Variable"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1024
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1024
          }
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add/Enter"
  op: "Enter"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add"
  op: "Add"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add/Enter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split/split_dim"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split"
  op: "Split"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split/split_dim"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "num_split"
    value {
      i: 2
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Sigmoid"
  op: "Sigmoid"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Sigmoid_1"
  op: "Sigmoid"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul"
  op: "Mul"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Sigmoid"
  input: "RNN/while/MultiRNNCell/Cell2/Slice"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
  op: "Variable"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1024
        }
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\004\000\000\000\002\000\000"
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.05412658676505089
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.05412658676505089
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 249
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/sub"
  op: "Sub"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/max"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/mul"
  op: "Mul"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/RandomUniform"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform"
  op: "Add"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/mul"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat/concat_dim"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat"
  op: "Concat"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat/concat_dim"
  input: "RNN/while/MultiRNNCell/Cell2/dropout/mul"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul/Enter"
  op: "Enter"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul"
  op: "MatMul"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul/Enter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias"
  op: "Variable"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Initializer/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Initializer/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add/Enter"
  op: "Enter"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add"
  op: "Add"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add/Enter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Tanh"
  op: "Tanh"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/GRUCell/mul"
  op: "Mul"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Sigmoid_1"
  input: "RNN/while/MultiRNNCell/Cell2/Slice"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/GRUCell/sub/x"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/GRUCell/sub"
  op: "Sub"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/sub/x"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Sigmoid_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1"
  op: "Mul"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/sub"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Tanh"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/MultiRNNCell/Cell2/GRUCell/add"
  op: "Add"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/mul"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/concat/concat_dim"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "RNN/while/concat"
  op: "Concat"
  input: "RNN/while/concat/concat_dim"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/add"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/add"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/add"
  attr {
    key: "N"
    value {
      i: 3
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/dropout/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "RNN/while/dropout/random_uniform/min"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/while/dropout/random_uniform/max"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "RNN/while/dropout/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "RNN/while/dropout/Shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 276
    }
  }
}
node {
  name: "RNN/while/dropout/random_uniform/sub"
  op: "Sub"
  input: "RNN/while/dropout/random_uniform/max"
  input: "RNN/while/dropout/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/dropout/random_uniform/mul"
  op: "Mul"
  input: "RNN/while/dropout/random_uniform/RandomUniform"
  input: "RNN/while/dropout/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/dropout/random_uniform"
  op: "Add"
  input: "RNN/while/dropout/random_uniform/mul"
  input: "RNN/while/dropout/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/dropout/add"
  op: "Add"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/add/Enter"
  input: "RNN/while/dropout/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/dropout/Floor"
  op: "Floor"
  input: "RNN/while/dropout/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/dropout/Div"
  op: "Div"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/add"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/add/Enter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/dropout/mul"
  op: "Mul"
  input: "RNN/while/dropout/Div"
  input: "RNN/while/dropout/Floor"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/TensorArrayWrite/RefEnter"
  op: "RefEnter"
  input: "RNN/TensorArray"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "RNN/while/TensorArrayWrite"
  op: "TensorArrayWrite"
  input: "RNN/while/TensorArrayWrite/RefEnter"
  input: "RNN/while/Identity"
  input: "RNN/while/dropout/mul"
  input: "RNN/while/Identity_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
      }
    }
  }
}
node {
  name: "RNN/while/TensorArray_2/Const"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/while/add/y"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "RNN/while/add"
  op: "Add"
  input: "RNN/while/Identity"
  input: "RNN/while/add/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "RNN/while/NextIteration"
  op: "NextIteration"
  input: "RNN/while/add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "RNN/while/NextIteration_1"
  op: "NextIteration"
  input: "RNN/while/TensorArrayWrite"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/NextIteration_2"
  op: "NextIteration"
  input: "RNN/while/concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/Exit"
  op: "Exit"
  input: "RNN/while/Switch"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "RNN/while/Exit_1"
  op: "Exit"
  input: "RNN/while/Switch_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/while/Exit_2"
  op: "Exit"
  input: "RNN/while/Switch_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "RNN/TensorArrayPack_1/TensorArraySize"
  op: "TensorArraySize"
  input: "RNN/TensorArray"
  input: "RNN/while/Exit_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
      }
    }
  }
}
node {
  name: "RNN/TensorArrayPack_1/range/start"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "RNN/TensorArrayPack_1/range/delta"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "RNN/TensorArrayPack_1/range"
  op: "Range"
  input: "RNN/TensorArrayPack_1/range/start"
  input: "RNN/TensorArrayPack_1/TensorArraySize"
  input: "RNN/TensorArrayPack_1/range/delta"
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
      }
    }
  }
}
node {
  name: "RNN/TensorArrayPack_1/TensorArrayGather"
  op: "TensorArrayGather"
  input: "RNN/TensorArray"
  input: "RNN/TensorArrayPack_1/range"
  input: "RNN/while/Exit_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "element_shape"
    value {
      shape {
        dim {
          size: -1
        }
        dim {
          size: 512
        }
      }
    }
  }
}
node {
  name: "RNN/transpose/perm"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 3
          }
        }
        tensor_content: "\001\000\000\000\000\000\000\000\002\000\000\000"
      }
    }
  }
}
node {
  name: "RNN/transpose"
  op: "Transpose"
  input: "RNN/TensorArrayPack_1/TensorArrayGather"
  input: "RNN/transpose/perm"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "H"
  op: "Identity"
  input: "RNN/while/Exit_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Reshape/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\377\377\377\377\000\002\000\000"
      }
    }
  }
}
node {
  name: "Reshape"
  op: "Reshape"
  input: "RNN/transpose"
  input: "Reshape/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "fully_connected/Shape"
  op: "Shape"
  input: "Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "fully_connected/unpack"
  op: "Unpack"
  input: "fully_connected/Shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
  attr {
    key: "num"
    value {
      i: 2
    }
  }
}
node {
  name: "fully_connected/weights"
  op: "Variable"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 512
        }
        dim {
          size: 98
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "fully_connected/weights/Initializer/random_uniform/shape"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\002\000\000b\000\000\000"
      }
    }
  }
}
node {
  name: "fully_connected/weights/Initializer/random_uniform/min"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: -0.09917694330215454
      }
    }
  }
}
node {
  name: "fully_connected/weights/Initializer/random_uniform/max"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.09917694330215454
      }
    }
  }
}
node {
  name: "fully_connected/weights/Initializer/random_uniform/RandomUniform"
  op: "RandomUniform"
  input: "fully_connected/weights/Initializer/random_uniform/shape"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/weights"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "seed"
    value {
      i: 0
    }
  }
  attr {
    key: "seed2"
    value {
      i: 311
    }
  }
}
node {
  name: "fully_connected/weights/Initializer/random_uniform/sub"
  op: "Sub"
  input: "fully_connected/weights/Initializer/random_uniform/max"
  input: "fully_connected/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/weights"
      }
    }
  }
}
node {
  name: "fully_connected/weights/Initializer/random_uniform/mul"
  op: "Mul"
  input: "fully_connected/weights/Initializer/random_uniform/RandomUniform"
  input: "fully_connected/weights/Initializer/random_uniform/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/weights"
      }
    }
  }
}
node {
  name: "fully_connected/weights/Initializer/random_uniform"
  op: "Add"
  input: "fully_connected/weights/Initializer/random_uniform/mul"
  input: "fully_connected/weights/Initializer/random_uniform/min"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/weights"
      }
    }
  }
}
node {
  name: "fully_connected/weights/Assign"
  op: "Assign"
  input: "fully_connected/weights"
  input: "fully_connected/weights/Initializer/random_uniform"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "fully_connected/weights/read"
  op: "Identity"
  input: "fully_connected/weights"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/weights"
      }
    }
  }
}
node {
  name: "fully_connected/MatMul"
  op: "MatMul"
  input: "Reshape"
  input: "fully_connected/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "fully_connected/biases"
  op: "Variable"
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 98
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "fully_connected/biases/Initializer/zeros"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/biases"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 98
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "fully_connected/biases/Assign"
  op: "Assign"
  input: "fully_connected/biases"
  input: "fully_connected/biases/Initializer/zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "fully_connected/biases/read"
  op: "Identity"
  input: "fully_connected/biases"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/biases"
      }
    }
  }
}
node {
  name: "fully_connected/BiasAdd"
  op: "BiasAdd"
  input: "fully_connected/MatMul"
  input: "fully_connected/biases/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "Reshape_1/shape"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\377\377\377\377b\000\000\000"
      }
    }
  }
}
node {
  name: "Reshape_1"
  op: "Reshape"
  input: "one_hot_1"
  input: "Reshape_1/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Rank"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "Shape"
  op: "Shape"
  input: "fully_connected/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Rank_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "Shape_1"
  op: "Shape"
  input: "fully_connected/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Sub/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "Sub"
  op: "Sub"
  input: "Rank_1"
  input: "Sub/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Slice/begin"
  op: "Pack"
  input: "Sub"
  attr {
    key: "N"
    value {
      i: 1
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "Slice/size"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "Slice"
  op: "Slice"
  input: "Shape_1"
  input: "Slice/begin"
  input: "Slice/size"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "concat/concat_dim"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "concat/values_0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "concat"
  op: "Concat"
  input: "concat/concat_dim"
  input: "concat/values_0"
  input: "Slice"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Reshape_2"
  op: "Reshape"
  input: "fully_connected/BiasAdd"
  input: "concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Rank_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "Shape_2"
  op: "Shape"
  input: "Reshape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Sub_1/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "Sub_1"
  op: "Sub"
  input: "Rank_2"
  input: "Sub_1/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Slice_1/begin"
  op: "Pack"
  input: "Sub_1"
  attr {
    key: "N"
    value {
      i: 1
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "Slice_1/size"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "Slice_1"
  op: "Slice"
  input: "Shape_2"
  input: "Slice_1/begin"
  input: "Slice_1/size"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "concat_1/concat_dim"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "concat_1/values_0"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "concat_1"
  op: "Concat"
  input: "concat_1/concat_dim"
  input: "concat_1/values_0"
  input: "Slice_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Reshape_3"
  op: "Reshape"
  input: "Reshape_1"
  input: "concat_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "SoftmaxCrossEntropyWithLogits"
  op: "SoftmaxCrossEntropyWithLogits"
  input: "Reshape_2"
  input: "Reshape_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "Sub_2/y"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "Sub_2"
  op: "Sub"
  input: "Rank"
  input: "Sub_2/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Slice_2/begin"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "Slice_2/size"
  op: "Pack"
  input: "Sub_2"
  attr {
    key: "N"
    value {
      i: 1
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "Slice_2"
  op: "Slice"
  input: "Shape"
  input: "Slice_2/begin"
  input: "Slice_2/size"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Reshape_4"
  op: "Reshape"
  input: "SoftmaxCrossEntropyWithLogits"
  input: "Slice_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Reshape_5/shape/1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "Reshape_5/shape"
  op: "Pack"
  input: "batchsize"
  input: "Reshape_5/shape/1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "Reshape_5"
  op: "Reshape"
  input: "Reshape_4"
  input: "Reshape_5/shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Yo"
  op: "Softmax"
  input: "fully_connected/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "ArgMax/dimension"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "ArgMax"
  op: "ArgMax"
  input: "Yo"
  input: "ArgMax/dimension"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "Y/shape/1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "Y/shape"
  op: "Pack"
  input: "batchsize"
  input: "Y/shape/1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "Y"
  op: "Reshape"
  input: "ArgMax"
  input: "Y/shape"
  attr {
    key: "T"
    value {
      type: DT_INT64
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Shape"
  op: "Shape"
  input: "Reshape_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 1.0
      }
    }
  }
}
node {
  name: "gradients/Fill"
  op: "Fill"
  input: "gradients/Shape"
  input: "gradients/Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/f_count"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "gradients/f_count_1"
  op: "Enter"
  input: "gradients/f_count"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/Merge"
  op: "Merge"
  input: "gradients/f_count_1"
  input: "gradients/NextIteration"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Switch"
  op: "Switch"
  input: "gradients/Merge"
  input: "RNN/while/LoopCond"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Add/y"
  op: "Const"
  input: "^RNN/while/Identity"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients/Add"
  op: "Add"
  input: "gradients/Switch:1"
  input: "gradients/Add/y"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/NextIteration"
  op: "NextIteration"
  input: "gradients/Add"
  input: "^gradients/RNN/while/TensorArrayWrite_grad/TensorArrayRead/StackPush"
  input: "^gradients/RNN/while/concat_grad/ShapeN/StackPush"
  input: "^gradients/RNN/while/concat_grad/ShapeN/StackPush_1"
  input: "^gradients/RNN/while/concat_grad/ShapeN/StackPush_2"
  input: "^gradients/RNN/while/concat_grad/ConcatOffset/StackPush"
  input: "^gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/StackPush_1"
  input: "^gradients/RNN/while/dropout/mul_grad/mul/StackPush"
  input: "^gradients/RNN/while/dropout/mul_grad/mul_1/StackPush"
  input: "^gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/StackPush_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/StackPush_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/StackPush_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul_1/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPush_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul_1/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPush_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPush_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/mul_1/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split_grad/concat/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/ConcatOffset/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/StackPush_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul_1/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Reshape/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub/StackPush_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/StackPush_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/StackPush_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/StackPush_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul_1/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPush_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul_1/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPush_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPush_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/mul_1/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split_grad/concat/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/ConcatOffset/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/StackPush_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul_1/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Reshape/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub/StackPush_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/StackPush_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/StackPush_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/StackPush_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul_1/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPush_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul_1/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPush_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPush_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/mul_1/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split_grad/concat/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/BroadcastGradientArgs/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/ConcatOffset/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Reshape/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub/StackPush"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub/StackPush_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/f_count_2"
  op: "Exit"
  input: "gradients/Switch"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/b_count"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients/b_count_1"
  op: "Enter"
  input: "gradients/f_count_2"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/Merge_1"
  op: "Merge"
  input: "gradients/b_count_1"
  input: "gradients/NextIteration_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/GreaterEqual/Enter"
  op: "Enter"
  input: "gradients/b_count"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/GreaterEqual"
  op: "GreaterEqual"
  input: "gradients/Merge_1"
  input: "gradients/GreaterEqual/Enter"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/b_count_2"
  op: "LoopCond"
  input: "gradients/GreaterEqual"
}
node {
  name: "gradients/Switch_1"
  op: "Switch"
  input: "gradients/Merge_1"
  input: "gradients/b_count_2"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Sub"
  op: "Sub"
  input: "gradients/Switch_1:1"
  input: "gradients/GreaterEqual/Enter"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/NextIteration_1"
  op: "NextIteration"
  input: "gradients/Sub"
  input: "^gradients/RNN/while/TensorArrayWrite_grad/TensorArrayRead/b_sync"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/b_count_3"
  op: "Exit"
  input: "gradients/Switch_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Reshape_5_grad/Shape"
  op: "Shape"
  input: "Reshape_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Reshape_5_grad/Reshape"
  op: "Reshape"
  input: "gradients/Fill"
  input: "gradients/Reshape_5_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Reshape_4_grad/Shape"
  op: "Shape"
  input: "SoftmaxCrossEntropyWithLogits"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Reshape_4_grad/Reshape"
  op: "Reshape"
  input: "gradients/Reshape_5_grad/Reshape"
  input: "gradients/Reshape_4_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/zeros_like"
  op: "ZerosLike"
  input: "SoftmaxCrossEntropyWithLogits:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: -1
      }
    }
  }
}
node {
  name: "gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims"
  op: "ExpandDims"
  input: "gradients/Reshape_4_grad/Reshape"
  input: "gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tdim"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/SoftmaxCrossEntropyWithLogits_grad/mul"
  op: "Mul"
  input: "gradients/SoftmaxCrossEntropyWithLogits_grad/ExpandDims"
  input: "SoftmaxCrossEntropyWithLogits:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/Reshape_2_grad/Shape"
  op: "Shape"
  input: "fully_connected/BiasAdd"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Reshape_2_grad/Reshape"
  op: "Reshape"
  input: "gradients/SoftmaxCrossEntropyWithLogits_grad/mul"
  input: "gradients/Reshape_2_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/fully_connected/BiasAdd_grad/BiasAddGrad"
  op: "BiasAddGrad"
  input: "gradients/Reshape_2_grad/Reshape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "data_format"
    value {
      s: "NHWC"
    }
  }
}
node {
  name: "gradients/fully_connected/BiasAdd_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/Reshape_2_grad/Reshape"
  input: "^gradients/fully_connected/BiasAdd_grad/BiasAddGrad"
}
node {
  name: "gradients/fully_connected/BiasAdd_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/Reshape_2_grad/Reshape"
  input: "^gradients/fully_connected/BiasAdd_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/Reshape_2_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/fully_connected/BiasAdd_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/fully_connected/BiasAdd_grad/BiasAddGrad"
  input: "^gradients/fully_connected/BiasAdd_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/fully_connected/BiasAdd_grad/BiasAddGrad"
      }
    }
  }
}
node {
  name: "gradients/fully_connected/MatMul_grad/MatMul"
  op: "MatMul"
  input: "gradients/fully_connected/BiasAdd_grad/tuple/control_dependency"
  input: "fully_connected/weights/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients/fully_connected/MatMul_grad/MatMul_1"
  op: "MatMul"
  input: "Reshape"
  input: "gradients/fully_connected/BiasAdd_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/fully_connected/MatMul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/fully_connected/MatMul_grad/MatMul"
  input: "^gradients/fully_connected/MatMul_grad/MatMul_1"
}
node {
  name: "gradients/fully_connected/MatMul_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/fully_connected/MatMul_grad/MatMul"
  input: "^gradients/fully_connected/MatMul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/fully_connected/MatMul_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients/fully_connected/MatMul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/fully_connected/MatMul_grad/MatMul_1"
  input: "^gradients/fully_connected/MatMul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/fully_connected/MatMul_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "gradients/Reshape_grad/Shape"
  op: "Shape"
  input: "RNN/transpose"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/Reshape_grad/Reshape"
  op: "Reshape"
  input: "gradients/fully_connected/MatMul_grad/tuple/control_dependency"
  input: "gradients/Reshape_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/transpose_grad/InvertPermutation"
  op: "InvertPermutation"
  input: "RNN/transpose/perm"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/transpose_grad/transpose"
  op: "Transpose"
  input: "gradients/Reshape_grad/Reshape"
  input: "gradients/RNN/transpose_grad/InvertPermutation"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tperm"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/TensorArrayPack_1/TensorArrayGather_grad/TensorArray/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gradients/RNN/TensorArrayPack_1/TensorArrayGather_grad/TensorArrayGrad/TensorArrayGrad"
  op: "TensorArrayGrad"
  input: "RNN/TensorArray"
  input: "RNN/while/Exit_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
      }
    }
  }
  attr {
    key: "source"
    value {
      s: "gradients"
    }
  }
}
node {
  name: "gradients/RNN/TensorArrayPack_1/TensorArrayGather_grad/TensorArrayGrad/gradient_flow"
  op: "Identity"
  input: "RNN/while/Exit_1"
  input: "^gradients/RNN/TensorArrayPack_1/TensorArrayGather_grad/TensorArrayGrad/TensorArrayGrad"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
      }
    }
  }
}
node {
  name: "gradients/RNN/TensorArrayPack_1/TensorArrayGather_grad/TensorArrayScatter"
  op: "TensorArrayScatter"
  input: "gradients/RNN/TensorArrayPack_1/TensorArrayGather_grad/TensorArrayGrad/TensorArrayGrad"
  input: "RNN/TensorArrayPack_1/range"
  input: "gradients/RNN/transpose_grad/transpose"
  input: "gradients/RNN/TensorArrayPack_1/TensorArrayGather_grad/TensorArrayGrad/gradient_flow"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
      }
    }
  }
}
node {
  name: "gradients/RNN/TensorArrayPack_1/TensorArrayGather_grad/TensorArray_1/Const"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gradients/zeros_like_1"
  op: "ZerosLike"
  input: "RNN/while/Exit_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/Exit_1_grad/b_exit"
  op: "Enter"
  input: "gradients/RNN/TensorArrayPack_1/TensorArrayGather_grad/TensorArrayScatter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/Exit_2_grad/b_exit"
  op: "Enter"
  input: "gradients/zeros_like_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/Switch_1_grad/b_switch"
  op: "Merge"
  input: "gradients/RNN/while/Exit_1_grad/b_exit"
  input: "gradients/RNN/while/Switch_1_grad_1/NextIteration"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/Switch_2_grad/b_switch"
  op: "Merge"
  input: "gradients/RNN/while/Exit_2_grad/b_exit"
  input: "gradients/RNN/while/Switch_2_grad_1/NextIteration"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/Merge_1_grad/Switch"
  op: "Switch"
  input: "gradients/RNN/while/Switch_1_grad/b_switch"
  input: "gradients/b_count_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/Switch_1_grad/b_switch"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/Merge_1_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/Merge_1_grad/Switch"
}
node {
  name: "gradients/RNN/while/Merge_1_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/Merge_1_grad/Switch"
  input: "^gradients/RNN/while/Merge_1_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/Switch_1_grad/b_switch"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/Merge_1_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/Merge_1_grad/Switch:1"
  input: "^gradients/RNN/while/Merge_1_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/Switch_1_grad/b_switch"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/Merge_2_grad/Switch"
  op: "Switch"
  input: "gradients/RNN/while/Switch_2_grad/b_switch"
  input: "gradients/b_count_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/Switch_2_grad/b_switch"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/Merge_2_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/Merge_2_grad/Switch"
}
node {
  name: "gradients/RNN/while/Merge_2_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/Merge_2_grad/Switch"
  input: "^gradients/RNN/while/Merge_2_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/Switch_2_grad/b_switch"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/Merge_2_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/Merge_2_grad/Switch:1"
  input: "^gradients/RNN/while/Merge_2_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/Switch_2_grad/b_switch"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/TensorArrayWrite_grad/TensorArray/Const"
  op: "Const"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gradients/RNN/while/TensorArrayWrite_grad/TensorArrayGrad/TensorArrayGrad/RefEnter"
  op: "RefEnter"
  input: "RNN/TensorArray"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/TensorArrayWrite_grad/TensorArrayGrad/TensorArrayGrad"
  op: "TensorArrayGrad"
  input: "gradients/RNN/while/TensorArrayWrite_grad/TensorArrayGrad/TensorArrayGrad/RefEnter"
  input: "gradients/RNN/while/Merge_1_grad/tuple/control_dependency_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
      }
    }
  }
  attr {
    key: "source"
    value {
      s: "gradients"
    }
  }
}
node {
  name: "gradients/RNN/while/TensorArrayWrite_grad/TensorArrayGrad/gradient_flow"
  op: "Identity"
  input: "gradients/RNN/while/Merge_1_grad/tuple/control_dependency_1"
  input: "^gradients/RNN/while/TensorArrayWrite_grad/TensorArrayGrad/TensorArrayGrad"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/TensorArrayWrite_grad/TensorArrayRead/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
        s: "loc:@RNN/while/Identity"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/TensorArrayWrite_grad/TensorArrayRead/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/TensorArrayWrite_grad/TensorArrayRead/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
        s: "loc:@RNN/while/Identity"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/TensorArrayWrite_grad/TensorArrayRead/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/TensorArrayWrite_grad/TensorArrayRead/RefEnter"
  input: "RNN/while/Identity"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
        s: "loc:@RNN/while/Identity"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/TensorArrayWrite_grad/TensorArrayRead/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/TensorArrayWrite_grad/TensorArrayRead/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
        s: "loc:@RNN/while/Identity"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/TensorArrayWrite_grad/TensorArrayRead/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/TensorArrayWrite_grad/TensorArrayRead/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
        s: "loc:@RNN/while/Identity"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/TensorArrayWrite_grad/TensorArrayRead/b_sync"
  op: "ControlTrigger"
  input: "^gradients/RNN/while/TensorArrayWrite_grad/TensorArrayRead/StackPop"
  input: "^gradients/RNN/while/concat_grad/ShapeN/StackPop"
  input: "^gradients/RNN/while/concat_grad/ShapeN/StackPop_1"
  input: "^gradients/RNN/while/concat_grad/ShapeN/StackPop_2"
  input: "^gradients/RNN/while/concat_grad/ConcatOffset/StackPop"
  input: "^gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/StackPop_1"
  input: "^gradients/RNN/while/dropout/mul_grad/mul/StackPop"
  input: "^gradients/RNN/while/dropout/mul_grad/mul_1/StackPop"
  input: "^gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/StackPop_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/StackPop_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/StackPop_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul_1/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul_1/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/mul_1/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split_grad/concat/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/ConcatOffset/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/StackPop_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul_1/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Reshape/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub/StackPop_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/StackPop_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/StackPop_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/StackPop_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul_1/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul_1/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/mul_1/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split_grad/concat/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/ConcatOffset/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/StackPop_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul_1/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Reshape/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub/StackPop_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/StackPop_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/StackPop_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/StackPop_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul_1/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul_1/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/mul_1/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split_grad/concat/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/BroadcastGradientArgs/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/ConcatOffset/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Reshape/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub/StackPop"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub/StackPop_1"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/TensorArrayWrite_grad/TensorArrayRead"
  op: "TensorArrayRead"
  input: "gradients/RNN/while/TensorArrayWrite_grad/TensorArrayGrad/TensorArrayGrad"
  input: "gradients/RNN/while/TensorArrayWrite_grad/TensorArrayRead/StackPop"
  input: "gradients/RNN/while/TensorArrayWrite_grad/TensorArrayGrad/gradient_flow"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/TensorArrayWrite_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/Merge_1_grad/tuple/control_dependency_1"
  input: "^gradients/RNN/while/TensorArrayWrite_grad/TensorArrayRead"
}
node {
  name: "gradients/RNN/while/TensorArrayWrite_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/TensorArrayWrite_grad/TensorArrayRead"
  input: "^gradients/RNN/while/TensorArrayWrite_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/TensorArray"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/TensorArrayWrite_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/Merge_1_grad/tuple/control_dependency_1"
  input: "^gradients/RNN/while/TensorArrayWrite_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/Switch_1_grad/b_switch"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/ShapeN/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/add"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/ShapeN/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/concat_grad/ShapeN/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/add"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/ShapeN/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/concat_grad/ShapeN/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/add"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/add"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/ShapeN/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/concat_grad/ShapeN/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/add"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/ShapeN/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/concat_grad/ShapeN/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/add"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/ShapeN/f_acc_1"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/add"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/ShapeN/RefEnter_1"
  op: "RefEnter"
  input: "gradients/RNN/while/concat_grad/ShapeN/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/add"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/ShapeN/StackPush_1"
  op: "StackPush"
  input: "gradients/RNN/while/concat_grad/ShapeN/RefEnter_1"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/add"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/add"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/ShapeN/StackPop_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/concat_grad/ShapeN/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/add"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/ShapeN/StackPop_1"
  op: "StackPop"
  input: "gradients/RNN/while/concat_grad/ShapeN/StackPop_1/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/add"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/ShapeN/f_acc_2"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/add"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/ShapeN/RefEnter_2"
  op: "RefEnter"
  input: "gradients/RNN/while/concat_grad/ShapeN/f_acc_2"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/add"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/ShapeN/StackPush_2"
  op: "StackPush"
  input: "gradients/RNN/while/concat_grad/ShapeN/RefEnter_2"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/add"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/add"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/ShapeN/StackPop_2/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/concat_grad/ShapeN/f_acc_2"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/add"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/ShapeN/StackPop_2"
  op: "StackPop"
  input: "gradients/RNN/while/concat_grad/ShapeN/StackPop_2/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/add"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/ShapeN"
  op: "ShapeN"
  input: "gradients/RNN/while/concat_grad/ShapeN/StackPop"
  input: "gradients/RNN/while/concat_grad/ShapeN/StackPop_1"
  input: "gradients/RNN/while/concat_grad/ShapeN/StackPop_2"
  attr {
    key: "N"
    value {
      i: 3
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/ConcatOffset/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/concat/concat_dim"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/ConcatOffset/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/concat_grad/ConcatOffset/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/concat/concat_dim"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/ConcatOffset/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/concat_grad/ConcatOffset/RefEnter"
  input: "RNN/while/concat/concat_dim"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/concat/concat_dim"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/ConcatOffset/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/concat_grad/ConcatOffset/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/concat/concat_dim"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/ConcatOffset/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/concat_grad/ConcatOffset/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/concat/concat_dim"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/ConcatOffset"
  op: "ConcatOffset"
  input: "gradients/RNN/while/concat_grad/ConcatOffset/StackPop"
  input: "gradients/RNN/while/concat_grad/ShapeN"
  input: "gradients/RNN/while/concat_grad/ShapeN:1"
  input: "gradients/RNN/while/concat_grad/ShapeN:2"
  attr {
    key: "N"
    value {
      i: 3
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/Slice"
  op: "Slice"
  input: "gradients/RNN/while/Merge_2_grad/tuple/control_dependency_1"
  input: "gradients/RNN/while/concat_grad/ConcatOffset"
  input: "gradients/RNN/while/concat_grad/ShapeN"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/Slice_1"
  op: "Slice"
  input: "gradients/RNN/while/Merge_2_grad/tuple/control_dependency_1"
  input: "gradients/RNN/while/concat_grad/ConcatOffset:1"
  input: "gradients/RNN/while/concat_grad/ShapeN:1"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/Slice_2"
  op: "Slice"
  input: "gradients/RNN/while/Merge_2_grad/tuple/control_dependency_1"
  input: "gradients/RNN/while/concat_grad/ConcatOffset:2"
  input: "gradients/RNN/while/concat_grad/ShapeN:2"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/concat_grad/Slice"
  input: "^gradients/RNN/while/concat_grad/Slice_1"
  input: "^gradients/RNN/while/concat_grad/Slice_2"
}
node {
  name: "gradients/RNN/while/concat_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/concat_grad/Slice"
  input: "^gradients/RNN/while/concat_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/concat_grad/Slice"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/concat_grad/Slice_1"
  input: "^gradients/RNN/while/concat_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/concat_grad/Slice_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/concat_grad/tuple/control_dependency_2"
  op: "Identity"
  input: "gradients/RNN/while/concat_grad/Slice_2"
  input: "^gradients/RNN/while/concat_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/concat_grad/Slice_2"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/Shape"
  op: "Shape"
  input: "RNN/while/dropout/Div"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/Shape_1"
  op: "Shape"
  input: "RNN/while/dropout/Floor"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/dropout/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/dropout/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/dropout/mul_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/dropout/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/dropout/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/dropout/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/dropout/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/RefEnter_1"
  op: "RefEnter"
  input: "gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/dropout/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/StackPush_1"
  op: "StackPush"
  input: "gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/RefEnter_1"
  input: "gradients/RNN/while/dropout/mul_grad/Shape_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/dropout/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/dropout/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/StackPop_1"
  op: "StackPop"
  input: "gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/dropout/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/StackPop"
  input: "gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/mul/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/dropout/Floor"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/mul/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/dropout/mul_grad/mul/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/dropout/Floor"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/mul/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/dropout/mul_grad/mul/RefEnter"
  input: "RNN/while/dropout/Floor"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/dropout/Floor"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/mul/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/dropout/mul_grad/mul/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/dropout/Floor"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/mul/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/dropout/mul_grad/mul/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/dropout/Floor"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/mul"
  op: "Mul"
  input: "gradients/RNN/while/TensorArrayWrite_grad/tuple/control_dependency"
  input: "gradients/RNN/while/dropout/mul_grad/mul/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/Sum"
  op: "Sum"
  input: "gradients/RNN/while/dropout/mul_grad/mul"
  input: "gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/dropout/mul_grad/Sum"
  input: "gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/mul_1/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/dropout/Div"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/mul_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/dropout/mul_grad/mul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/dropout/Div"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/mul_1/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/dropout/mul_grad/mul_1/RefEnter"
  input: "RNN/while/dropout/Div"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/dropout/Div"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/mul_1/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/dropout/mul_grad/mul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/dropout/Div"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/mul_1/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/dropout/mul_grad/mul_1/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/dropout/Div"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/mul_1"
  op: "Mul"
  input: "gradients/RNN/while/dropout/mul_grad/mul_1/StackPop"
  input: "gradients/RNN/while/TensorArrayWrite_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/Sum_1"
  op: "Sum"
  input: "gradients/RNN/while/dropout/mul_grad/mul_1"
  input: "gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/dropout/mul_grad/Sum_1"
  input: "gradients/RNN/while/dropout/mul_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/dropout/mul_grad/Reshape"
  input: "^gradients/RNN/while/dropout/mul_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/dropout/mul_grad/Reshape"
  input: "^gradients/RNN/while/dropout/mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/dropout/mul_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/mul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/dropout/mul_grad/Reshape_1"
  input: "^gradients/RNN/while/dropout/mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/dropout/mul_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/Shape_1"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/add/Enter"
  input: "^RNN/while/Identity"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/dropout/Div_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/dropout/Div_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/dropout/Div_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/dropout/Div_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/dropout/Div_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/dropout/Div_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/f_acc_1"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/dropout/Div_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/RefEnter_1"
  op: "RefEnter"
  input: "gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/dropout/Div_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/StackPush_1"
  op: "StackPush"
  input: "gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/RefEnter_1"
  input: "gradients/RNN/while/dropout/Div_grad/Shape_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/dropout/Div_grad/Shape_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/dropout/Div_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/StackPop_1"
  op: "StackPop"
  input: "gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/dropout/Div_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/StackPop"
  input: "gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/truediv/Enter"
  op: "Enter"
  input: "pkeep"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/truediv"
  op: "Div"
  input: "gradients/RNN/while/dropout/mul_grad/tuple/control_dependency"
  input: "gradients/RNN/while/dropout/Div_grad/truediv/Enter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/Sum"
  op: "Sum"
  input: "gradients/RNN/while/dropout/Div_grad/truediv"
  input: "gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/dropout/Div_grad/Sum"
  input: "gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/Neg"
  op: "Neg"
  input: "gradients/RNN/while/concat_grad/ShapeN/StackPop_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/Square"
  op: "Square"
  input: "gradients/RNN/while/dropout/Div_grad/truediv/Enter"
  input: "^gradients/Sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/truediv_1"
  op: "Div"
  input: "gradients/RNN/while/dropout/Div_grad/Neg"
  input: "gradients/RNN/while/dropout/Div_grad/Square"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/mul"
  op: "Mul"
  input: "gradients/RNN/while/dropout/mul_grad/tuple/control_dependency"
  input: "gradients/RNN/while/dropout/Div_grad/truediv_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/Sum_1"
  op: "Sum"
  input: "gradients/RNN/while/dropout/Div_grad/mul"
  input: "gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/dropout/Div_grad/Sum_1"
  input: "gradients/RNN/while/dropout/Div_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/dropout/Div_grad/Reshape"
  input: "^gradients/RNN/while/dropout/Div_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/dropout/Div_grad/Reshape"
  input: "^gradients/RNN/while/dropout/Div_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/dropout/Div_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/dropout/Div_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/dropout/Div_grad/Reshape_1"
  input: "^gradients/RNN/while/dropout/Div_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/dropout/Div_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/Switch_1_grad_1/NextIteration"
  op: "NextIteration"
  input: "gradients/RNN/while/TensorArrayWrite_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/AddN"
  op: "AddN"
  input: "gradients/RNN/while/concat_grad/tuple/control_dependency_2"
  input: "gradients/RNN/while/dropout/Div_grad/tuple/control_dependency"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/concat_grad/Slice_2"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Shape_1"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/f_acc_1"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/RefEnter_1"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/StackPush_1"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/RefEnter_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Shape_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Shape_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/StackPop_1"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Sum"
  op: "Sum"
  input: "gradients/AddN"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Sum_1"
  op: "Sum"
  input: "gradients/AddN"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Sum_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Reshape_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Sigmoid_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Shape_1"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell2/Slice"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/f_acc_1"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/RefEnter_1"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/StackPush_1"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/RefEnter_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Shape_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/StackPop_1"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/Slice"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/Slice"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell2/Slice"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/Slice"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/Slice"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/Slice"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul"
  op: "Mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Sum"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul_1/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Sigmoid_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Sigmoid_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul_1/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul_1/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Sigmoid_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Sigmoid_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul_1/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Sigmoid_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul_1/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul_1/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Sigmoid_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul_1"
  op: "Mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul_1/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Sum_1"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Sum_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Reshape_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Shape_1"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Tanh"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/f_acc_1"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/RefEnter_1"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPush_1"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/RefEnter_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Shape_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Shape_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop_1"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Tanh"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Tanh"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Tanh"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Tanh"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Tanh"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Tanh"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul"
  op: "Mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/tuple/control_dependency_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Sum"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul_1/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/sub"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/sub"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul_1/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul_1/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/sub"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/sub"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul_1/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/sub"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul_1/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul_1/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/sub"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul_1"
  op: "Mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul_1/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/add_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Sum_1"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Sum_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Reshape_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/Shape"
  op: "Const"
  input: "^gradients/Sub"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/Shape_1"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Sigmoid_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/Shape_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/Shape_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/Shape"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/Sum"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/Sum_1"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/Neg"
  op: "Neg"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/Sum_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/Neg"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/Reshape_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Tanh_grad/TanhGrad"
  op: "TanhGrad"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/mul/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_1_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/AddN_1"
  op: "AddN"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/sub_grad/tuple/control_dependency_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Sigmoid_1_grad/SigmoidGrad"
  op: "SigmoidGrad"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul_1/StackPop"
  input: "gradients/AddN_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/Shape_1"
  op: "Const"
  input: "^gradients/Sub"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 512
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/BroadcastGradientArgs/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/Sum"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Tanh_grad/TanhGrad"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/Sum_1"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Tanh_grad/TanhGrad"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/Sum_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/Reshape_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/MatMul/Enter"
  op: "Enter"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/MatMul"
  op: "MatMul"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/MatMul/Enter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1"
  op: "MatMul"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/MatMul"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/MatMul"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add/Enter_grad/b_acc"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add/Enter_grad/b_acc_1"
  op: "Enter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add/Enter_grad/b_acc"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add/Enter_grad/b_acc_2"
  op: "Merge"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add/Enter_grad/b_acc_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add/Enter_grad/NextIteration"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add/Enter_grad/Switch"
  op: "Switch"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add/Enter_grad/b_acc_2"
  input: "gradients/b_count_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add/Enter_grad/Add"
  op: "Add"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add/Enter_grad/Switch:1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add/Enter_grad/NextIteration"
  op: "NextIteration"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add/Enter_grad/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add/Enter_grad/b_acc_3"
  op: "Exit"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add/Enter_grad/Switch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell2/dropout/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/dropout/mul"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/dropout/mul"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell2/dropout/mul"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/dropout/mul"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/dropout/mul"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/dropout/mul"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN/f_acc_1"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN/RefEnter_1"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPush_1"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN/RefEnter_1"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop_1"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop_1/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN"
  op: "ShapeN"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat/concat_dim"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ConcatOffset"
  op: "ConcatOffset"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN:1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/Slice"
  op: "Slice"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ConcatOffset"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/Slice_1"
  op: "Slice"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ConcatOffset:1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN:1"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/Slice"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/Slice_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/Slice"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/Slice"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/Slice_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/Slice_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul/Enter_grad/b_acc"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1024
          }
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul/Enter_grad/b_acc_1"
  op: "Enter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul/Enter_grad/b_acc"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul/Enter_grad/b_acc_2"
  op: "Merge"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul/Enter_grad/b_acc_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul/Enter_grad/NextIteration"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul/Enter_grad/Switch"
  op: "Switch"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul/Enter_grad/b_acc_2"
  input: "gradients/b_count_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul/Enter_grad/Add"
  op: "Add"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul/Enter_grad/Switch:1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul/Enter_grad/NextIteration"
  op: "NextIteration"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul/Enter_grad/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul/Enter_grad/b_acc_3"
  op: "Exit"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul/Enter_grad/Switch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Sigmoid"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Shape_1"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell2/Slice"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/f_acc_1"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/RefEnter_1"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPush_1"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/RefEnter_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Shape_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop_1"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/mul"
  op: "Mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/tuple/control_dependency_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Sum"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/mul_1/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Sigmoid"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/mul_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/mul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Sigmoid"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/mul_1/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/mul_1/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Sigmoid"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Sigmoid"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/mul_1/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/mul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Sigmoid"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/mul_1/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/mul_1/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Sigmoid"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/mul_1"
  op: "Mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/mul_1/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Sum_1"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/mul_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Sum_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Reshape_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Sigmoid_grad/SigmoidGrad"
  op: "SigmoidGrad"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/mul_1/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split_grad/concat/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split/split_dim"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split_grad/concat/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split_grad/concat/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split/split_dim"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split_grad/concat/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split_grad/concat/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split/split_dim"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split/split_dim"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split_grad/concat/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split_grad/concat/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split/split_dim"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split_grad/concat/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split_grad/concat/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split/split_dim"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split_grad/concat"
  op: "Concat"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split_grad/concat/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Sigmoid_grad/SigmoidGrad"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Sigmoid_1_grad/SigmoidGrad"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/Shape_1"
  op: "Const"
  input: "^gradients/Sub"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1024
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/BroadcastGradientArgs/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/Sum"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split_grad/concat"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/Sum_1"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/split_grad/concat"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/Sum_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/Reshape_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/MatMul/Enter"
  op: "Enter"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/MatMul"
  op: "MatMul"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/MatMul/Enter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/MatMul_1"
  op: "MatMul"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/MatMul"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/MatMul_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/MatMul"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/MatMul_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add/Enter_grad/b_acc"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1024
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add/Enter_grad/b_acc_1"
  op: "Enter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add/Enter_grad/b_acc"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add/Enter_grad/b_acc_2"
  op: "Merge"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add/Enter_grad/b_acc_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add/Enter_grad/NextIteration"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add/Enter_grad/Switch"
  op: "Switch"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add/Enter_grad/b_acc_2"
  input: "gradients/b_count_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add/Enter_grad/Add"
  op: "Add"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add/Enter_grad/Switch:1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add/Enter_grad/NextIteration"
  op: "NextIteration"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add/Enter_grad/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add/Enter_grad/b_acc_3"
  op: "Exit"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add/Enter_grad/Switch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell2/dropout/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/ShapeN"
  op: "ShapeN"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/mul/StackPop"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/ConcatOffset/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/ConcatOffset/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/ConcatOffset/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/ConcatOffset/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/ConcatOffset/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat/concat_dim"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/ConcatOffset/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/ConcatOffset/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/ConcatOffset/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/ConcatOffset/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/ConcatOffset"
  op: "ConcatOffset"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/ConcatOffset/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/ShapeN"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/ShapeN:1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/Slice"
  op: "Slice"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/ConcatOffset"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/ShapeN"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/Slice_1"
  op: "Slice"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/ConcatOffset:1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/ShapeN:1"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/Slice"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/Slice_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/Slice"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/Slice"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/Slice_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/Slice_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul/Enter_grad/b_acc"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1024
          }
          dim {
            size: 1024
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul/Enter_grad/b_acc_1"
  op: "Enter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul/Enter_grad/b_acc"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul/Enter_grad/b_acc_2"
  op: "Merge"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul/Enter_grad/b_acc_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul/Enter_grad/NextIteration"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul/Enter_grad/Switch"
  op: "Switch"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul/Enter_grad/b_acc_2"
  input: "gradients/b_count_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul/Enter_grad/Add"
  op: "Add"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul/Enter_grad/Switch:1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul/Enter_grad/NextIteration"
  op: "NextIteration"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul/Enter_grad/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul/Enter_grad/b_acc_3"
  op: "Exit"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul/Enter_grad/Switch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/AddN_2"
  op: "AddN"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/tuple/control_dependency"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/concat_grad/Slice"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell2/dropout/Div"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Shape_1"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell2/dropout/Floor"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/f_acc_1"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/RefEnter_1"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/StackPush_1"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/RefEnter_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Shape_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/StackPop_1"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/dropout/Floor"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/dropout/Floor"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell2/dropout/Floor"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/dropout/Floor"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/dropout/Floor"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/dropout/Floor"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul"
  op: "Mul"
  input: "gradients/AddN_2"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Sum"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul_1/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/dropout/Div"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/dropout/Div"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul_1/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul_1/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell2/dropout/Div"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/dropout/Div"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul_1/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/dropout/Div"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul_1/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul_1/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/dropout/Div"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul_1"
  op: "Mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul_1/StackPop"
  input: "gradients/AddN_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Sum_1"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/mul_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Sum_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Reshape_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/AddN_3"
  op: "AddN"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/tuple/control_dependency_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/mul_grad/tuple/control_dependency_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/concat_grad/tuple/control_dependency_1"
  attr {
    key: "N"
    value {
      i: 3
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/mul_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Rank"
  op: "Const"
  input: "^gradients/Sub"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell2/Slice"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/pack/1"
  op: "Const"
  input: "^gradients/Sub"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/pack"
  op: "Pack"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Rank"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/pack/1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Reshape/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/Slice/begin"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Reshape/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Reshape/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/Slice/begin"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Reshape/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Reshape/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell2/Slice/begin"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/Slice/begin"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Reshape/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Reshape/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/Slice/begin"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Reshape/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Reshape/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell2/Slice/begin"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Reshape/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/pack"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Shape_1"
  op: "Shape"
  input: "RNN/while/Identity_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Shape_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Shape_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub/f_acc_1"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub/RefEnter_1"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub/StackPush_1"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub/RefEnter_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub/StackPop_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub/StackPop_1"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub/StackPop_1/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub"
  op: "Sub"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub_1"
  op: "Sub"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Reshape/StackPop"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/sub_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/pack"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/concat/concat_dim"
  op: "Const"
  input: "^gradients/Sub"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/concat"
  op: "Concat"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/concat/concat_dim"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Reshape_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Pad"
  op: "Pad"
  input: "gradients/AddN_3"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Shape_1"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/add/Enter"
  input: "^RNN/while/Identity"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/f_acc_1"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/RefEnter_1"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/StackPush_1"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/RefEnter_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Shape_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Shape_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/StackPop_1"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/truediv"
  op: "Div"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/tuple/control_dependency"
  input: "gradients/RNN/while/dropout/Div_grad/truediv/Enter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Sum"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/truediv"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Neg"
  op: "Neg"
  input: "gradients/RNN/while/concat_grad/ShapeN/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Square"
  op: "Square"
  input: "gradients/RNN/while/dropout/Div_grad/truediv/Enter"
  input: "^gradients/Sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/truediv_1"
  op: "Div"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Neg"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Square"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/mul"
  op: "Mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/mul_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/truediv_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Sum_1"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Sum_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Reshape_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/AddN_4"
  op: "AddN"
  input: "gradients/RNN/while/concat_grad/tuple/control_dependency_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/dropout/Div_grad/tuple/control_dependency"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/concat_grad/Slice_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Shape_1"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/f_acc_1"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/RefEnter_1"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/StackPush_1"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/RefEnter_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Shape_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Shape_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/StackPop_1"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Sum"
  op: "Sum"
  input: "gradients/AddN_4"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Sum_1"
  op: "Sum"
  input: "gradients/AddN_4"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Sum_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Reshape_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Sigmoid_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Shape_1"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell1/Slice"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/f_acc_1"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/RefEnter_1"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/StackPush_1"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/RefEnter_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Shape_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/StackPop_1"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/Slice"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/Slice"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell1/Slice"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/Slice"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/Slice"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/Slice"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul"
  op: "Mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Sum"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul_1/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Sigmoid_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Sigmoid_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul_1/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul_1/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Sigmoid_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Sigmoid_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul_1/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Sigmoid_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul_1/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul_1/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Sigmoid_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul_1"
  op: "Mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul_1/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Sum_1"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Sum_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Reshape_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Shape_1"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Tanh"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/f_acc_1"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/RefEnter_1"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPush_1"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/RefEnter_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Shape_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Shape_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop_1"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Tanh"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Tanh"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Tanh"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Tanh"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Tanh"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Tanh"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul"
  op: "Mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/tuple/control_dependency_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Sum"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul_1/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/sub"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/sub"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul_1/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul_1/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/sub"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/sub"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul_1/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/sub"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul_1/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul_1/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/sub"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul_1"
  op: "Mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul_1/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/add_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Sum_1"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Sum_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Reshape_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/Shape"
  op: "Const"
  input: "^gradients/Sub"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/Shape_1"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Sigmoid_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/Shape_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/Shape_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/Shape"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/Sum"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/Sum_1"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/Neg"
  op: "Neg"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/Sum_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/Neg"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/Reshape_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Tanh_grad/TanhGrad"
  op: "TanhGrad"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/mul/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_1_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/AddN_5"
  op: "AddN"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/sub_grad/tuple/control_dependency_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Sigmoid_1_grad/SigmoidGrad"
  op: "SigmoidGrad"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul_1/StackPop"
  input: "gradients/AddN_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/Shape_1"
  op: "Const"
  input: "^gradients/Sub"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 512
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/BroadcastGradientArgs/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/Sum"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Tanh_grad/TanhGrad"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/Sum_1"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Tanh_grad/TanhGrad"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/Sum_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/Reshape_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/MatMul/Enter"
  op: "Enter"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/MatMul"
  op: "MatMul"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/MatMul/Enter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1"
  op: "MatMul"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/MatMul"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/MatMul"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add/Enter_grad/b_acc"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add/Enter_grad/b_acc_1"
  op: "Enter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add/Enter_grad/b_acc"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add/Enter_grad/b_acc_2"
  op: "Merge"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add/Enter_grad/b_acc_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add/Enter_grad/NextIteration"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add/Enter_grad/Switch"
  op: "Switch"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add/Enter_grad/b_acc_2"
  input: "gradients/b_count_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add/Enter_grad/Add"
  op: "Add"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add/Enter_grad/Switch:1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add/Enter_grad/NextIteration"
  op: "NextIteration"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add/Enter_grad/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add/Enter_grad/b_acc_3"
  op: "Exit"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add/Enter_grad/Switch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell1/dropout/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/dropout/mul"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/dropout/mul"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell1/dropout/mul"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/dropout/mul"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/dropout/mul"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/dropout/mul"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN/f_acc_1"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN/RefEnter_1"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPush_1"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN/RefEnter_1"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop_1"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop_1/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN"
  op: "ShapeN"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat/concat_dim"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ConcatOffset"
  op: "ConcatOffset"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN:1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/Slice"
  op: "Slice"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ConcatOffset"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/Slice_1"
  op: "Slice"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ConcatOffset:1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN:1"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/Slice"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/Slice_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/Slice"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/Slice"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/Slice_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/Slice_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul/Enter_grad/b_acc"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1024
          }
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul/Enter_grad/b_acc_1"
  op: "Enter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul/Enter_grad/b_acc"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul/Enter_grad/b_acc_2"
  op: "Merge"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul/Enter_grad/b_acc_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul/Enter_grad/NextIteration"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul/Enter_grad/Switch"
  op: "Switch"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul/Enter_grad/b_acc_2"
  input: "gradients/b_count_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul/Enter_grad/Add"
  op: "Add"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul/Enter_grad/Switch:1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul/Enter_grad/NextIteration"
  op: "NextIteration"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul/Enter_grad/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul/Enter_grad/b_acc_3"
  op: "Exit"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul/Enter_grad/Switch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Sigmoid"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Shape_1"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell1/Slice"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/f_acc_1"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/RefEnter_1"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPush_1"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/RefEnter_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Shape_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop_1"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/mul"
  op: "Mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/tuple/control_dependency_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Sum"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/mul_1/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Sigmoid"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/mul_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/mul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Sigmoid"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/mul_1/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/mul_1/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Sigmoid"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Sigmoid"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/mul_1/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/mul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Sigmoid"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/mul_1/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/mul_1/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Sigmoid"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/mul_1"
  op: "Mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/mul_1/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Sum_1"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/mul_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Sum_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Reshape_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Sigmoid_grad/SigmoidGrad"
  op: "SigmoidGrad"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/mul_1/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split_grad/concat/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split/split_dim"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split_grad/concat/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split_grad/concat/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split/split_dim"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split_grad/concat/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split_grad/concat/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split/split_dim"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split/split_dim"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split_grad/concat/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split_grad/concat/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split/split_dim"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split_grad/concat/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split_grad/concat/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split/split_dim"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split_grad/concat"
  op: "Concat"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split_grad/concat/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Sigmoid_grad/SigmoidGrad"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Sigmoid_1_grad/SigmoidGrad"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/Shape_1"
  op: "Const"
  input: "^gradients/Sub"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1024
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/BroadcastGradientArgs/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/Sum"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split_grad/concat"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/Sum_1"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/split_grad/concat"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/Sum_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/Reshape_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/MatMul/Enter"
  op: "Enter"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/MatMul"
  op: "MatMul"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/MatMul/Enter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/MatMul_1"
  op: "MatMul"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/MatMul"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/MatMul_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/MatMul"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/MatMul_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add/Enter_grad/b_acc"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1024
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add/Enter_grad/b_acc_1"
  op: "Enter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add/Enter_grad/b_acc"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add/Enter_grad/b_acc_2"
  op: "Merge"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add/Enter_grad/b_acc_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add/Enter_grad/NextIteration"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add/Enter_grad/Switch"
  op: "Switch"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add/Enter_grad/b_acc_2"
  input: "gradients/b_count_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add/Enter_grad/Add"
  op: "Add"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add/Enter_grad/Switch:1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add/Enter_grad/NextIteration"
  op: "NextIteration"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add/Enter_grad/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add/Enter_grad/b_acc_3"
  op: "Exit"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add/Enter_grad/Switch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell1/dropout/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/ShapeN"
  op: "ShapeN"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/mul/StackPop"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/ConcatOffset/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/ConcatOffset/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/ConcatOffset/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/ConcatOffset/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/ConcatOffset/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat/concat_dim"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/ConcatOffset/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/ConcatOffset/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/ConcatOffset/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/ConcatOffset/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/ConcatOffset"
  op: "ConcatOffset"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/ConcatOffset/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/ShapeN"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/ShapeN:1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/Slice"
  op: "Slice"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/ConcatOffset"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/ShapeN"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/Slice_1"
  op: "Slice"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/ConcatOffset:1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/ShapeN:1"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/Slice"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/Slice_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/Slice"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/Slice"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/Slice_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/Slice_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul/Enter_grad/b_acc"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1024
          }
          dim {
            size: 1024
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul/Enter_grad/b_acc_1"
  op: "Enter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul/Enter_grad/b_acc"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul/Enter_grad/b_acc_2"
  op: "Merge"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul/Enter_grad/b_acc_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul/Enter_grad/NextIteration"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul/Enter_grad/Switch"
  op: "Switch"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul/Enter_grad/b_acc_2"
  input: "gradients/b_count_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul/Enter_grad/Add"
  op: "Add"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul/Enter_grad/Switch:1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul/Enter_grad/NextIteration"
  op: "NextIteration"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul/Enter_grad/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul/Enter_grad/b_acc_3"
  op: "Exit"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul/Enter_grad/Switch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/AddN_6"
  op: "AddN"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/tuple/control_dependency"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/concat_grad/Slice"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell1/dropout/Div"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Shape_1"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell1/dropout/Floor"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/f_acc_1"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/RefEnter_1"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/StackPush_1"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/RefEnter_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Shape_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/StackPop_1"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/dropout/Floor"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/dropout/Floor"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell1/dropout/Floor"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/dropout/Floor"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/dropout/Floor"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/dropout/Floor"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul"
  op: "Mul"
  input: "gradients/AddN_6"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Sum"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul_1/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/dropout/Div"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/dropout/Div"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul_1/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul_1/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell1/dropout/Div"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/dropout/Div"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul_1/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/dropout/Div"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul_1/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul_1/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/dropout/Div"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul_1"
  op: "Mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul_1/StackPop"
  input: "gradients/AddN_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Sum_1"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/mul_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Sum_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Reshape_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/AddN_7"
  op: "AddN"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/tuple/control_dependency_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/mul_grad/tuple/control_dependency_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/concat_grad/tuple/control_dependency_1"
  attr {
    key: "N"
    value {
      i: 3
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/mul_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Rank"
  op: "Const"
  input: "^gradients/Sub"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell1/Slice"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/pack/1"
  op: "Const"
  input: "^gradients/Sub"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/pack"
  op: "Pack"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Rank"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/pack/1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Reshape/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/Slice/begin"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Reshape/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Reshape/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/Slice/begin"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Reshape/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Reshape/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell1/Slice/begin"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/Slice/begin"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Reshape/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Reshape/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/Slice/begin"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Reshape/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Reshape/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell1/Slice/begin"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Reshape/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/pack"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Shape_1"
  op: "Shape"
  input: "RNN/while/Identity_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Shape_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Shape_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub/f_acc_1"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub/RefEnter_1"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub/StackPush_1"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub/RefEnter_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub/StackPop_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub/StackPop_1"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub/StackPop_1/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub"
  op: "Sub"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub_1"
  op: "Sub"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Reshape/StackPop"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/sub_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/pack"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/concat/concat_dim"
  op: "Const"
  input: "^gradients/Sub"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/concat"
  op: "Concat"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/concat/concat_dim"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Reshape_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Pad"
  op: "Pad"
  input: "gradients/AddN_7"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Shape_1"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/add/Enter"
  input: "^RNN/while/Identity"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/f_acc_1"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/RefEnter_1"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/StackPush_1"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/RefEnter_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Shape_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Shape_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/StackPop_1"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/truediv"
  op: "Div"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/tuple/control_dependency"
  input: "gradients/RNN/while/dropout/Div_grad/truediv/Enter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Sum"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/truediv"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Neg"
  op: "Neg"
  input: "gradients/RNN/while/concat_grad/ShapeN/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Square"
  op: "Square"
  input: "gradients/RNN/while/dropout/Div_grad/truediv/Enter"
  input: "^gradients/Sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/truediv_1"
  op: "Div"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Neg"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Square"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/mul"
  op: "Mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/mul_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/truediv_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Sum_1"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Sum_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Reshape_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/AddN_8"
  op: "AddN"
  input: "gradients/RNN/while/concat_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/dropout/Div_grad/tuple/control_dependency"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/concat_grad/Slice"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Shape_1"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/f_acc_1"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/RefEnter_1"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/StackPush_1"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/RefEnter_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Shape_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Shape_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/StackPop_1"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Sum"
  op: "Sum"
  input: "gradients/AddN_8"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Sum_1"
  op: "Sum"
  input: "gradients/AddN_8"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Sum_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Reshape_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Sigmoid_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Shape_1"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell0/Slice"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/f_acc_1"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/RefEnter_1"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/StackPush_1"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/RefEnter_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Shape_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/StackPop_1"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/Slice"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/Slice"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell0/Slice"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/Slice"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/Slice"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/Slice"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul"
  op: "Mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Sum"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul_1/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Sigmoid_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Sigmoid_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul_1/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul_1/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Sigmoid_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Sigmoid_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul_1/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Sigmoid_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul_1/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul_1/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Sigmoid_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul_1"
  op: "Mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul_1/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Sum_1"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Sum_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Reshape_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/sub"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Shape_1"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Tanh"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/f_acc_1"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/RefEnter_1"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPush_1"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/RefEnter_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Shape_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Shape_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop_1"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Tanh"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Tanh"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Tanh"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Tanh"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Tanh"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Tanh"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul"
  op: "Mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/tuple/control_dependency_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Sum"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul_1/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/sub"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/sub"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul_1/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul_1/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/sub"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/sub"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul_1/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/sub"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul_1/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul_1/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/sub"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul_1"
  op: "Mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul_1/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/add_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Sum_1"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Sum_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Reshape_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/Shape"
  op: "Const"
  input: "^gradients/Sub"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
          }
        }
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/Shape_1"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Sigmoid_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/Shape_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/Shape_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/Shape"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/Sum"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/Shape"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/Sum_1"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/Neg"
  op: "Neg"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/Sum_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/Neg"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/Reshape_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Tanh_grad/TanhGrad"
  op: "TanhGrad"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/mul/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_1_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/AddN_9"
  op: "AddN"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/sub_grad/tuple/control_dependency_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Sigmoid_1_grad/SigmoidGrad"
  op: "SigmoidGrad"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul_1/StackPop"
  input: "gradients/AddN_9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/Shape_1"
  op: "Const"
  input: "^gradients/Sub"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 512
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/BroadcastGradientArgs/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/Sum"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Tanh_grad/TanhGrad"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/Sum_1"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Tanh_grad/TanhGrad"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/Sum_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/Reshape_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/MatMul/Enter"
  op: "Enter"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/MatMul"
  op: "MatMul"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/MatMul/Enter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1"
  op: "MatMul"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/MatMul"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/MatMul"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add/Enter_grad/b_acc"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add/Enter_grad/b_acc_1"
  op: "Enter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add/Enter_grad/b_acc"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add/Enter_grad/b_acc_2"
  op: "Merge"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add/Enter_grad/b_acc_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add/Enter_grad/NextIteration"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add/Enter_grad/Switch"
  op: "Switch"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add/Enter_grad/b_acc_2"
  input: "gradients/b_count_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add/Enter_grad/Add"
  op: "Add"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add/Enter_grad/Switch:1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add/Enter_grad/NextIteration"
  op: "NextIteration"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add/Enter_grad/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add/Enter_grad/b_acc_3"
  op: "Exit"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add/Enter_grad/Switch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/dropout/mul"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/dropout/mul"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/mul"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/dropout/mul"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/dropout/mul"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/dropout/mul"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN/f_acc_1"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN/RefEnter_1"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPush_1"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN/RefEnter_1"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop_1"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop_1/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN"
  op: "ShapeN"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat/concat_dim"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ConcatOffset"
  op: "ConcatOffset"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ConcatOffset/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN:1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/Slice"
  op: "Slice"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ConcatOffset"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/Slice_1"
  op: "Slice"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ConcatOffset:1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN:1"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/Slice"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/Slice_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/Slice"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/Slice"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/Slice_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/Slice_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul/Enter_grad/b_acc"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 610
          }
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul/Enter_grad/b_acc_1"
  op: "Enter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul/Enter_grad/b_acc"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul/Enter_grad/b_acc_2"
  op: "Merge"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul/Enter_grad/b_acc_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul/Enter_grad/NextIteration"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul/Enter_grad/Switch"
  op: "Switch"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul/Enter_grad/b_acc_2"
  input: "gradients/b_count_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul/Enter_grad/Add"
  op: "Add"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul/Enter_grad/Switch:1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul/Enter_grad/NextIteration"
  op: "NextIteration"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul/Enter_grad/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul/Enter_grad/b_acc_3"
  op: "Exit"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul/Enter_grad/Switch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Sigmoid"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Shape_1"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell0/Slice"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/f_acc_1"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/RefEnter_1"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPush_1"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/RefEnter_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Shape_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop_1"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop_1/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/mul"
  op: "Mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/tuple/control_dependency_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Sum"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/mul_1/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Sigmoid"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/mul_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/mul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Sigmoid"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/mul_1/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/mul_1/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Sigmoid"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Sigmoid"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/mul_1/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/mul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Sigmoid"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/mul_1/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/mul_1/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Sigmoid"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/mul_1"
  op: "Mul"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/mul_1/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Sum_1"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/mul_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Sum_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/BroadcastGradientArgs/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Reshape_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Sigmoid_grad/SigmoidGrad"
  op: "SigmoidGrad"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/mul_1/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split_grad/concat/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split/split_dim"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split_grad/concat/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split_grad/concat/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split/split_dim"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split_grad/concat/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split_grad/concat/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split/split_dim"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split/split_dim"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split_grad/concat/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split_grad/concat/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split/split_dim"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split_grad/concat/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split_grad/concat/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split/split_dim"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split_grad/concat"
  op: "Concat"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split_grad/concat/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Sigmoid_grad/SigmoidGrad"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Sigmoid_1_grad/SigmoidGrad"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/Shape_1"
  op: "Const"
  input: "^gradients/Sub"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 1024
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/BroadcastGradientArgs/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/BroadcastGradientArgs/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/BroadcastGradientArgs/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/BroadcastGradientArgs/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/BroadcastGradientArgs/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/BroadcastGradientArgs/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/BroadcastGradientArgs/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/BroadcastGradientArgs/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/BroadcastGradientArgs"
  op: "BroadcastGradientArgs"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/BroadcastGradientArgs/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/Sum"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split_grad/concat"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/BroadcastGradientArgs"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/BroadcastGradientArgs/StackPop"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/Sum_1"
  op: "Sum"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/split_grad/concat"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/BroadcastGradientArgs:1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/Sum_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/Shape_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/Reshape_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/Reshape"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/Reshape"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/Reshape_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/MatMul/Enter"
  op: "Enter"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/read"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/MatMul"
  op: "MatMul"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/MatMul/Enter"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: false
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: true
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/MatMul_1"
  op: "MatMul"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/MatMul_1/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/tuple/control_dependency"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "transpose_a"
    value {
      b: true
    }
  }
  attr {
    key: "transpose_b"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/MatMul"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/MatMul_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/MatMul"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/MatMul"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/MatMul_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/MatMul_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add/Enter_grad/b_acc"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1024
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add/Enter_grad/b_acc_1"
  op: "Enter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add/Enter_grad/b_acc"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add/Enter_grad/b_acc_2"
  op: "Merge"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add/Enter_grad/b_acc_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add/Enter_grad/NextIteration"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add/Enter_grad/Switch"
  op: "Switch"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add/Enter_grad/b_acc_2"
  input: "gradients/b_count_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add/Enter_grad/Add"
  op: "Add"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add/Enter_grad/Switch:1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add/Enter_grad/NextIteration"
  op: "NextIteration"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add/Enter_grad/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add/Enter_grad/b_acc_3"
  op: "Exit"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add/Enter_grad/Switch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell0/dropout/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/ShapeN"
  op: "ShapeN"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/concat_grad/ShapeN/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/mul/StackPop"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/ConcatOffset/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/ConcatOffset/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/ConcatOffset/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/ConcatOffset/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/ConcatOffset/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat/concat_dim"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/ConcatOffset/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/ConcatOffset/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/ConcatOffset/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/ConcatOffset/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat/concat_dim"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/ConcatOffset"
  op: "ConcatOffset"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/ConcatOffset/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/ShapeN"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/ShapeN:1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/Slice"
  op: "Slice"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/ConcatOffset"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/ShapeN"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/Slice_1"
  op: "Slice"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/tuple/control_dependency"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/ConcatOffset:1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/ShapeN:1"
  attr {
    key: "Index"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/tuple/group_deps"
  op: "NoOp"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/Slice"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/Slice_1"
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/tuple/control_dependency"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/Slice"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/Slice"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/tuple/control_dependency_1"
  op: "Identity"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/Slice_1"
  input: "^gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/tuple/group_deps"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/Slice_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul/Enter_grad/b_acc"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 610
          }
          dim {
            size: 1024
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul/Enter_grad/b_acc_1"
  op: "Enter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul/Enter_grad/b_acc"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: false
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul/Enter_grad/b_acc_2"
  op: "Merge"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul/Enter_grad/b_acc_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul/Enter_grad/NextIteration"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul/Enter_grad/Switch"
  op: "Switch"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul/Enter_grad/b_acc_2"
  input: "gradients/b_count_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul/Enter_grad/Add"
  op: "Add"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul/Enter_grad/Switch:1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul/Enter_grad/NextIteration"
  op: "NextIteration"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul/Enter_grad/Add"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul/Enter_grad/b_acc_3"
  op: "Exit"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul/Enter_grad/Switch"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "gradients/AddN_10"
  op: "AddN"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/tuple/control_dependency_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/mul_grad/tuple/control_dependency_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/concat_grad/tuple/control_dependency_1"
  attr {
    key: "N"
    value {
      i: 3
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/mul_grad/Reshape_1"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Rank"
  op: "Const"
  input: "^gradients/Sub"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 2
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Shape"
  op: "Shape"
  input: "RNN/while/MultiRNNCell/Cell0/Slice"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/pack/1"
  op: "Const"
  input: "^gradients/Sub"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/pack"
  op: "Pack"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Rank"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/pack/1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "axis"
    value {
      i: 0
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Reshape/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/Slice/begin"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Reshape/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Reshape/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/Slice/begin"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Reshape/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Reshape/RefEnter"
  input: "RNN/while/MultiRNNCell/Cell0/Slice/begin"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/Slice/begin"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Reshape/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Reshape/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/Slice/begin"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Reshape/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Reshape/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/while/MultiRNNCell/Cell0/Slice/begin"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Reshape"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Reshape/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/pack"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Shape_1"
  op: "Shape"
  input: "RNN/while/Identity_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "out_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub/f_acc"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub/StackPush"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub/RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Shape_1"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Shape_1"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub/StackPop/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub/f_acc"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Shape_1"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub/StackPop"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub/StackPop/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Shape_1"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub/f_acc_1"
  op: "Stack"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "stack_name"
    value {
      s: ""
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub/RefEnter_1"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub/StackPush_1"
  op: "StackPush"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub/RefEnter_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Shape"
  input: "^gradients/Add"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Shape"
      }
    }
  }
  attr {
    key: "swap_memory"
    value {
      b: false
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub/StackPop_1/RefEnter"
  op: "RefEnter"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub/f_acc_1"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Shape"
      }
    }
  }
  attr {
    key: "frame_name"
    value {
      s: "gradients/RNN/while/RNN/while/"
    }
  }
  attr {
    key: "is_constant"
    value {
      b: true
    }
  }
  attr {
    key: "parallel_iterations"
    value {
      i: 32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub/StackPop_1"
  op: "StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub/StackPop_1/RefEnter"
  input: "^gradients/Sub"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Shape"
      }
    }
  }
  attr {
    key: "elem_type"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub"
  op: "Sub"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub/StackPop"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub/StackPop_1"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub_1"
  op: "Sub"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Reshape/StackPop"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Reshape_1"
  op: "Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/sub_1"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/pack"
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "Tshape"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/concat/concat_dim"
  op: "Const"
  input: "^gradients/Sub"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/concat"
  op: "Concat"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/concat/concat_dim"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Reshape"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Reshape_1"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
  attr {
    key: "T"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Pad"
  op: "Pad"
  input: "gradients/AddN_10"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/concat"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tpaddings"
    value {
      type: DT_INT32
    }
  }
}
node {
  name: "gradients/AddN_11"
  op: "AddN"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Pad"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/Slice_grad/Pad"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/Slice_grad/Pad"
  attr {
    key: "N"
    value {
      i: 3
    }
  }
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@gradients/RNN/while/MultiRNNCell/Cell2/Slice_grad/Pad"
      }
    }
  }
}
node {
  name: "gradients/RNN/while/Switch_2_grad_1/NextIteration"
  op: "NextIteration"
  input: "gradients/AddN_11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
}
node {
  name: "beta1_power/initial_value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.8999999761581421
      }
    }
  }
}
node {
  name: "beta1_power"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "beta1_power/Assign"
  op: "Assign"
  input: "beta1_power"
  input: "beta1_power/initial_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "beta1_power/read"
  op: "Identity"
  input: "beta1_power"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
}
node {
  name: "beta2_power/initial_value"
  op: "Const"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9990000128746033
      }
    }
  }
}
node {
  name: "beta2_power"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "beta2_power/Assign"
  op: "Assign"
  input: "beta2_power"
  input: "beta2_power/initial_value"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "beta2_power/read"
  op: "Identity"
  input: "beta2_power"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
}
node {
  name: "zeros"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 610
          }
          dim {
            size: 1024
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Adam"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 610
        }
        dim {
          size: 1024
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Adam/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Adam"
  input: "zeros"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Adam/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
}
node {
  name: "zeros_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 610
          }
          dim {
            size: 1024
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Adam_1"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 610
        }
        dim {
          size: 1024
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Adam_1/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Adam_1"
  input: "zeros_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Adam_1/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
}
node {
  name: "zeros_2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1024
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Adam"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1024
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Adam/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Adam"
  input: "zeros_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Adam/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias"
      }
    }
  }
}
node {
  name: "zeros_3"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1024
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Adam_1"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1024
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Adam_1/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Adam_1"
  input: "zeros_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Adam_1/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias"
      }
    }
  }
}
node {
  name: "zeros_4"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 610
          }
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Adam"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 610
        }
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Adam/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Adam"
  input: "zeros_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Adam/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
}
node {
  name: "zeros_5"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 610
          }
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Adam_1"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 610
        }
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Adam_1/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Adam_1"
  input: "zeros_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Adam_1/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
}
node {
  name: "zeros_6"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Adam"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Adam/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Adam"
  input: "zeros_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Adam/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
}
node {
  name: "zeros_7"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Adam_1"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Adam_1/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Adam_1"
  input: "zeros_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Adam_1/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
}
node {
  name: "zeros_8"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1024
          }
          dim {
            size: 1024
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Adam"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1024
        }
        dim {
          size: 1024
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Adam/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Adam"
  input: "zeros_8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Adam/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
}
node {
  name: "zeros_9"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1024
          }
          dim {
            size: 1024
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Adam_1"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1024
        }
        dim {
          size: 1024
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Adam_1/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Adam_1"
  input: "zeros_9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Adam_1/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
}
node {
  name: "zeros_10"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1024
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Adam"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1024
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Adam/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Adam"
  input: "zeros_10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Adam/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias"
      }
    }
  }
}
node {
  name: "zeros_11"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1024
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Adam_1"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1024
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Adam_1/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Adam_1"
  input: "zeros_11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Adam_1/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias"
      }
    }
  }
}
node {
  name: "zeros_12"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1024
          }
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Adam"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1024
        }
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Adam/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Adam"
  input: "zeros_12"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Adam/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
}
node {
  name: "zeros_13"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1024
          }
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Adam_1"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1024
        }
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Adam_1/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Adam_1"
  input: "zeros_13"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Adam_1/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
}
node {
  name: "zeros_14"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Adam"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Adam/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Adam"
  input: "zeros_14"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Adam/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
}
node {
  name: "zeros_15"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Adam_1"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Adam_1/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Adam_1"
  input: "zeros_15"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Adam_1/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
}
node {
  name: "zeros_16"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1024
          }
          dim {
            size: 1024
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Adam"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1024
        }
        dim {
          size: 1024
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Adam/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Adam"
  input: "zeros_16"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Adam/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
}
node {
  name: "zeros_17"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1024
          }
          dim {
            size: 1024
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Adam_1"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1024
        }
        dim {
          size: 1024
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Adam_1/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Adam_1"
  input: "zeros_17"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Adam_1/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
}
node {
  name: "zeros_18"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1024
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Adam"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1024
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Adam/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Adam"
  input: "zeros_18"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Adam/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias"
      }
    }
  }
}
node {
  name: "zeros_19"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1024
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Adam_1"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1024
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Adam_1/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Adam_1"
  input: "zeros_19"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Adam_1/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias"
      }
    }
  }
}
node {
  name: "zeros_20"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1024
          }
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Adam"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1024
        }
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Adam/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Adam"
  input: "zeros_20"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Adam/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
}
node {
  name: "zeros_21"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 1024
          }
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Adam_1"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 1024
        }
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Adam_1/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Adam_1"
  input: "zeros_21"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Adam_1/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
}
node {
  name: "zeros_22"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Adam"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Adam/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Adam"
  input: "zeros_22"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Adam/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
}
node {
  name: "zeros_23"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 512
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Adam_1"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 512
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Adam_1/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Adam_1"
  input: "zeros_23"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Adam_1/read"
  op: "Identity"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
}
node {
  name: "zeros_24"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 512
          }
          dim {
            size: 98
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "fully_connected/weights/Adam"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 512
        }
        dim {
          size: 98
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "fully_connected/weights/Adam/Assign"
  op: "Assign"
  input: "fully_connected/weights/Adam"
  input: "zeros_24"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "fully_connected/weights/Adam/read"
  op: "Identity"
  input: "fully_connected/weights/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/weights"
      }
    }
  }
}
node {
  name: "zeros_25"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 512
          }
          dim {
            size: 98
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "fully_connected/weights/Adam_1"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/weights"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 512
        }
        dim {
          size: 98
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "fully_connected/weights/Adam_1/Assign"
  op: "Assign"
  input: "fully_connected/weights/Adam_1"
  input: "zeros_25"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "fully_connected/weights/Adam_1/read"
  op: "Identity"
  input: "fully_connected/weights/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/weights"
      }
    }
  }
}
node {
  name: "zeros_26"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 98
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "fully_connected/biases/Adam"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/biases"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 98
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "fully_connected/biases/Adam/Assign"
  op: "Assign"
  input: "fully_connected/biases/Adam"
  input: "zeros_26"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "fully_connected/biases/Adam/read"
  op: "Identity"
  input: "fully_connected/biases/Adam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/biases"
      }
    }
  }
}
node {
  name: "zeros_27"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
          dim {
            size: 98
          }
        }
        float_val: 0.0
      }
    }
  }
}
node {
  name: "fully_connected/biases/Adam_1"
  op: "Variable"
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/biases"
      }
    }
  }
  attr {
    key: "container"
    value {
      s: ""
    }
  }
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "shape"
    value {
      shape {
        dim {
          size: 98
        }
      }
    }
  }
  attr {
    key: "shared_name"
    value {
      s: ""
    }
  }
}
node {
  name: "fully_connected/biases/Adam_1/Assign"
  op: "Assign"
  input: "fully_connected/biases/Adam_1"
  input: "zeros_27"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "fully_connected/biases/Adam_1/read"
  op: "Identity"
  input: "fully_connected/biases/Adam_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/biases"
      }
    }
  }
}
node {
  name: "Adam/beta1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.8999999761581421
      }
    }
  }
}
node {
  name: "Adam/beta2"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 0.9990000128746033
      }
    }
  }
}
node {
  name: "Adam/epsilon"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_FLOAT
        tensor_shape {
        }
        float_val: 9.99999993922529e-09
      }
    }
  }
}
node {
  name: "Adam/update_RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/ApplyAdam"
  op: "ApplyAdam"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Adam"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Adam_1"
  input: "beta1_power/read"
  input: "beta2_power/read"
  input: "lr"
  input: "Adam/beta1"
  input: "Adam/beta2"
  input: "Adam/epsilon"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/Linear/MatMul/Enter_grad/b_acc_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Adam/update_RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/ApplyAdam"
  op: "ApplyAdam"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Adam"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Adam_1"
  input: "beta1_power/read"
  input: "beta2_power/read"
  input: "lr"
  input: "Adam/beta1"
  input: "Adam/beta2"
  input: "Adam/epsilon"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Gates/add/Enter_grad/b_acc_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Adam/update_RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/ApplyAdam"
  op: "ApplyAdam"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Adam"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Adam_1"
  input: "beta1_power/read"
  input: "beta2_power/read"
  input: "lr"
  input: "Adam/beta1"
  input: "Adam/beta2"
  input: "Adam/epsilon"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/MatMul/Enter_grad/b_acc_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Adam/update_RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/ApplyAdam"
  op: "ApplyAdam"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Adam"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Adam_1"
  input: "beta1_power/read"
  input: "beta2_power/read"
  input: "lr"
  input: "Adam/beta1"
  input: "Adam/beta2"
  input: "Adam/epsilon"
  input: "gradients/RNN/while/MultiRNNCell/Cell0/GRUCell/Candidate/add/Enter_grad/b_acc_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Adam/update_RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/ApplyAdam"
  op: "ApplyAdam"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Adam"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Adam_1"
  input: "beta1_power/read"
  input: "beta2_power/read"
  input: "lr"
  input: "Adam/beta1"
  input: "Adam/beta2"
  input: "Adam/epsilon"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/Linear/MatMul/Enter_grad/b_acc_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Adam/update_RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/ApplyAdam"
  op: "ApplyAdam"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Adam"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Adam_1"
  input: "beta1_power/read"
  input: "beta2_power/read"
  input: "lr"
  input: "Adam/beta1"
  input: "Adam/beta2"
  input: "Adam/epsilon"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Gates/add/Enter_grad/b_acc_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Adam/update_RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/ApplyAdam"
  op: "ApplyAdam"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Adam"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Adam_1"
  input: "beta1_power/read"
  input: "beta2_power/read"
  input: "lr"
  input: "Adam/beta1"
  input: "Adam/beta2"
  input: "Adam/epsilon"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/MatMul/Enter_grad/b_acc_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Adam/update_RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/ApplyAdam"
  op: "ApplyAdam"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Adam"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Adam_1"
  input: "beta1_power/read"
  input: "beta2_power/read"
  input: "lr"
  input: "Adam/beta1"
  input: "Adam/beta2"
  input: "Adam/epsilon"
  input: "gradients/RNN/while/MultiRNNCell/Cell1/GRUCell/Candidate/add/Enter_grad/b_acc_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Adam/update_RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/ApplyAdam"
  op: "ApplyAdam"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Adam"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Adam_1"
  input: "beta1_power/read"
  input: "beta2_power/read"
  input: "lr"
  input: "Adam/beta1"
  input: "Adam/beta2"
  input: "Adam/epsilon"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/Linear/MatMul/Enter_grad/b_acc_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Adam/update_RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/ApplyAdam"
  op: "ApplyAdam"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Adam"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Adam_1"
  input: "beta1_power/read"
  input: "beta2_power/read"
  input: "lr"
  input: "Adam/beta1"
  input: "Adam/beta2"
  input: "Adam/epsilon"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Gates/add/Enter_grad/b_acc_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Adam/update_RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/ApplyAdam"
  op: "ApplyAdam"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Adam"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Adam_1"
  input: "beta1_power/read"
  input: "beta2_power/read"
  input: "lr"
  input: "Adam/beta1"
  input: "Adam/beta2"
  input: "Adam/epsilon"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/MatMul/Enter_grad/b_acc_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Adam/update_RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/ApplyAdam"
  op: "ApplyAdam"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Adam"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Adam_1"
  input: "beta1_power/read"
  input: "beta2_power/read"
  input: "lr"
  input: "Adam/beta1"
  input: "Adam/beta2"
  input: "Adam/epsilon"
  input: "gradients/RNN/while/MultiRNNCell/Cell2/GRUCell/Candidate/add/Enter_grad/b_acc_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Adam/update_fully_connected/weights/ApplyAdam"
  op: "ApplyAdam"
  input: "fully_connected/weights"
  input: "fully_connected/weights/Adam"
  input: "fully_connected/weights/Adam_1"
  input: "beta1_power/read"
  input: "beta2_power/read"
  input: "lr"
  input: "Adam/beta1"
  input: "Adam/beta2"
  input: "Adam/epsilon"
  input: "gradients/fully_connected/MatMul_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Adam/update_fully_connected/biases/ApplyAdam"
  op: "ApplyAdam"
  input: "fully_connected/biases"
  input: "fully_connected/biases/Adam"
  input: "fully_connected/biases/Adam_1"
  input: "beta1_power/read"
  input: "beta2_power/read"
  input: "lr"
  input: "Adam/beta1"
  input: "Adam/beta2"
  input: "Adam/epsilon"
  input: "gradients/fully_connected/BiasAdd_grad/tuple/control_dependency_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
}
node {
  name: "Adam/mul"
  op: "Mul"
  input: "beta1_power/read"
  input: "Adam/beta1"
  input: "^Adam/update_RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/ApplyAdam"
  input: "^Adam/update_fully_connected/weights/ApplyAdam"
  input: "^Adam/update_fully_connected/biases/ApplyAdam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
}
node {
  name: "Adam/Assign"
  op: "Assign"
  input: "beta1_power"
  input: "Adam/mul"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Adam/mul_1"
  op: "Mul"
  input: "beta2_power/read"
  input: "Adam/beta2"
  input: "^Adam/update_RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/ApplyAdam"
  input: "^Adam/update_fully_connected/weights/ApplyAdam"
  input: "^Adam/update_fully_connected/biases/ApplyAdam"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
}
node {
  name: "Adam/Assign_1"
  op: "Assign"
  input: "beta2_power"
  input: "Adam/mul_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: false
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "Adam"
  op: "NoOp"
  input: "^Adam/update_RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/ApplyAdam"
  input: "^Adam/update_RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/ApplyAdam"
  input: "^Adam/update_fully_connected/weights/ApplyAdam"
  input: "^Adam/update_fully_connected/biases/ApplyAdam"
  input: "^Adam/Assign"
  input: "^Adam/Assign_1"
}
node {
  name: "Mean/reduction_indices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
        }
        int_val: 1
      }
    }
  }
}
node {
  name: "Mean"
  op: "Mean"
  input: "Reshape_5"
  input: "Mean/reduction_indices"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 1
          }
        }
        int_val: 0
      }
    }
  }
}
node {
  name: "Mean_1"
  op: "Mean"
  input: "Mean"
  input: "Const"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "Cast_1"
  op: "Cast"
  input: "Y"
  attr {
    key: "DstT"
    value {
      type: DT_UINT8
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_INT64
    }
  }
}
node {
  name: "Equal"
  op: "Equal"
  input: "Y_"
  input: "Cast_1"
  attr {
    key: "T"
    value {
      type: DT_UINT8
    }
  }
}
node {
  name: "Cast_2"
  op: "Cast"
  input: "Equal"
  attr {
    key: "DstT"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "SrcT"
    value {
      type: DT_BOOL
    }
  }
}
node {
  name: "Const_1"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_INT32
        tensor_shape {
          dim {
            size: 2
          }
        }
        tensor_content: "\000\000\000\000\001\000\000\000"
      }
    }
  }
}
node {
  name: "Mean_2"
  op: "Mean"
  input: "Cast_2"
  input: "Const_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "Tidx"
    value {
      type: DT_INT32
    }
  }
  attr {
    key: "keep_dims"
    value {
      b: false
    }
  }
}
node {
  name: "ScalarSummary/TensorSummary"
  op: "TensorSummary"
  input: "Mean_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "description"
    value {
      s: ""
    }
  }
  attr {
    key: "display_name"
    value {
      s: "batch_loss"
    }
  }
  attr {
    key: "labels"
    value {
      list {
        s: "tf_summary_type:scalar"
      }
    }
  }
}
node {
  name: "ScalarSummary_1/TensorSummary"
  op: "TensorSummary"
  input: "Mean_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "description"
    value {
      s: ""
    }
  }
  attr {
    key: "display_name"
    value {
      s: "batch_accuracy"
    }
  }
  attr {
    key: "labels"
    value {
      list {
        s: "tf_summary_type:scalar"
      }
    }
  }
}
node {
  name: "MergeSummary/MergeSummary"
  op: "MergeSummary"
  input: "ScalarSummary/TensorSummary"
  input: "ScalarSummary_1/TensorSummary"
  attr {
    key: "N"
    value {
      i: 2
    }
  }
}
node {
  name: "save/Const"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "model"
      }
    }
  }
}
node {
  name: "save/save/tensor_names"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 44
          }
        }
        string_val: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias"
        string_val: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Adam"
        string_val: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Adam_1"
        string_val: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
        string_val: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Adam"
        string_val: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Adam_1"
        string_val: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias"
        string_val: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Adam"
        string_val: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Adam_1"
        string_val: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
        string_val: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Adam"
        string_val: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Adam_1"
        string_val: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias"
        string_val: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Adam"
        string_val: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Adam_1"
        string_val: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
        string_val: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Adam"
        string_val: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Adam_1"
        string_val: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias"
        string_val: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Adam"
        string_val: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Adam_1"
        string_val: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
        string_val: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Adam"
        string_val: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Adam_1"
        string_val: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias"
        string_val: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Adam"
        string_val: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Adam_1"
        string_val: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
        string_val: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Adam"
        string_val: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Adam_1"
        string_val: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias"
        string_val: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Adam"
        string_val: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Adam_1"
        string_val: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
        string_val: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Adam"
        string_val: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Adam_1"
        string_val: "beta1_power"
        string_val: "beta2_power"
        string_val: "fully_connected/biases"
        string_val: "fully_connected/biases/Adam"
        string_val: "fully_connected/biases/Adam_1"
        string_val: "fully_connected/weights"
        string_val: "fully_connected/weights/Adam"
        string_val: "fully_connected/weights/Adam_1"
      }
    }
  }
}
node {
  name: "save/save/shapes_and_slices"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
          dim {
            size: 44
          }
        }
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
        string_val: ""
      }
    }
  }
}
node {
  name: "save/save"
  op: "SaveSlices"
  input: "save/Const"
  input: "save/save/tensor_names"
  input: "save/save/shapes_and_slices"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Adam"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Adam_1"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Adam"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Adam_1"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Adam"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Adam_1"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Adam"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Adam_1"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Adam"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Adam_1"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Adam"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Adam_1"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Adam"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Adam_1"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Adam"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Adam_1"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Adam"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Adam_1"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Adam"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Adam_1"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Adam"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Adam_1"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Adam"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Adam_1"
  input: "beta1_power"
  input: "beta2_power"
  input: "fully_connected/biases"
  input: "fully_connected/biases/Adam"
  input: "fully_connected/biases/Adam_1"
  input: "fully_connected/weights"
  input: "fully_connected/weights/Adam"
  input: "fully_connected/weights/Adam_1"
  attr {
    key: "T"
    value {
      list {
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
        type: DT_FLOAT
      }
    }
  }
}
node {
  name: "save/control_dependency"
  op: "Identity"
  input: "save/Const"
  input: "^save/save"
  attr {
    key: "T"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@save/Const"
      }
    }
  }
}
node {
  name: "save/restore_slice/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
}
node {
  name: "save/restore_slice/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice/tensor_name"
  input: "save/restore_slice/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias"
  input: "save/restore_slice"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_1/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Adam"
      }
    }
  }
}
node {
  name: "save/restore_slice_1/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_1"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_1/tensor_name"
  input: "save/restore_slice_1/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_1"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Adam"
  input: "save/restore_slice_1"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_2/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Adam_1"
      }
    }
  }
}
node {
  name: "save/restore_slice_2/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_2"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_2/tensor_name"
  input: "save/restore_slice_2/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_2"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Adam_1"
  input: "save/restore_slice_2"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_3/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
}
node {
  name: "save/restore_slice_3/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_3"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_3/tensor_name"
  input: "save/restore_slice_3/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_3"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
  input: "save/restore_slice_3"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_4/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Adam"
      }
    }
  }
}
node {
  name: "save/restore_slice_4/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_4"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_4/tensor_name"
  input: "save/restore_slice_4/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_4"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Adam"
  input: "save/restore_slice_4"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_5/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Adam_1"
      }
    }
  }
}
node {
  name: "save/restore_slice_5/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_5"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_5/tensor_name"
  input: "save/restore_slice_5/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_5"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Adam_1"
  input: "save/restore_slice_5"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_6/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias"
      }
    }
  }
}
node {
  name: "save/restore_slice_6/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_6"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_6/tensor_name"
  input: "save/restore_slice_6/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_6"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias"
  input: "save/restore_slice_6"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_7/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Adam"
      }
    }
  }
}
node {
  name: "save/restore_slice_7/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_7"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_7/tensor_name"
  input: "save/restore_slice_7/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_7"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Adam"
  input: "save/restore_slice_7"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_8/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Adam_1"
      }
    }
  }
}
node {
  name: "save/restore_slice_8/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_8"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_8/tensor_name"
  input: "save/restore_slice_8/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_8"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Adam_1"
  input: "save/restore_slice_8"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_9/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
}
node {
  name: "save/restore_slice_9/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_9"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_9/tensor_name"
  input: "save/restore_slice_9/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_9"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
  input: "save/restore_slice_9"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_10/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Adam"
      }
    }
  }
}
node {
  name: "save/restore_slice_10/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_10"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_10/tensor_name"
  input: "save/restore_slice_10/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_10"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Adam"
  input: "save/restore_slice_10"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_11/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Adam_1"
      }
    }
  }
}
node {
  name: "save/restore_slice_11/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_11"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_11/tensor_name"
  input: "save/restore_slice_11/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_11"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Adam_1"
  input: "save/restore_slice_11"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_12/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
}
node {
  name: "save/restore_slice_12/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_12"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_12/tensor_name"
  input: "save/restore_slice_12/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_12"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias"
  input: "save/restore_slice_12"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_13/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Adam"
      }
    }
  }
}
node {
  name: "save/restore_slice_13/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_13"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_13/tensor_name"
  input: "save/restore_slice_13/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_13"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Adam"
  input: "save/restore_slice_13"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_14/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Adam_1"
      }
    }
  }
}
node {
  name: "save/restore_slice_14/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_14"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_14/tensor_name"
  input: "save/restore_slice_14/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_14"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Adam_1"
  input: "save/restore_slice_14"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_15/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
}
node {
  name: "save/restore_slice_15/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_15"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_15/tensor_name"
  input: "save/restore_slice_15/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_15"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
  input: "save/restore_slice_15"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_16/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Adam"
      }
    }
  }
}
node {
  name: "save/restore_slice_16/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_16"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_16/tensor_name"
  input: "save/restore_slice_16/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_16"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Adam"
  input: "save/restore_slice_16"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_17/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Adam_1"
      }
    }
  }
}
node {
  name: "save/restore_slice_17/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_17"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_17/tensor_name"
  input: "save/restore_slice_17/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_17"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Adam_1"
  input: "save/restore_slice_17"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_18/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias"
      }
    }
  }
}
node {
  name: "save/restore_slice_18/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_18"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_18/tensor_name"
  input: "save/restore_slice_18/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_18"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias"
  input: "save/restore_slice_18"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_19/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Adam"
      }
    }
  }
}
node {
  name: "save/restore_slice_19/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_19"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_19/tensor_name"
  input: "save/restore_slice_19/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_19"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Adam"
  input: "save/restore_slice_19"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_20/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Adam_1"
      }
    }
  }
}
node {
  name: "save/restore_slice_20/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_20"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_20/tensor_name"
  input: "save/restore_slice_20/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_20"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Adam_1"
  input: "save/restore_slice_20"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_21/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
}
node {
  name: "save/restore_slice_21/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_21"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_21/tensor_name"
  input: "save/restore_slice_21/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_21"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
  input: "save/restore_slice_21"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_22/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Adam"
      }
    }
  }
}
node {
  name: "save/restore_slice_22/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_22"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_22/tensor_name"
  input: "save/restore_slice_22/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_22"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Adam"
  input: "save/restore_slice_22"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_23/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Adam_1"
      }
    }
  }
}
node {
  name: "save/restore_slice_23/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_23"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_23/tensor_name"
  input: "save/restore_slice_23/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_23"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Adam_1"
  input: "save/restore_slice_23"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_24/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
}
node {
  name: "save/restore_slice_24/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_24"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_24/tensor_name"
  input: "save/restore_slice_24/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_24"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias"
  input: "save/restore_slice_24"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_25/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Adam"
      }
    }
  }
}
node {
  name: "save/restore_slice_25/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_25"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_25/tensor_name"
  input: "save/restore_slice_25/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_25"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Adam"
  input: "save/restore_slice_25"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_26/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Adam_1"
      }
    }
  }
}
node {
  name: "save/restore_slice_26/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_26"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_26/tensor_name"
  input: "save/restore_slice_26/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_26"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Adam_1"
  input: "save/restore_slice_26"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_27/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
}
node {
  name: "save/restore_slice_27/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_27"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_27/tensor_name"
  input: "save/restore_slice_27/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_27"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
  input: "save/restore_slice_27"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_28/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Adam"
      }
    }
  }
}
node {
  name: "save/restore_slice_28/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_28"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_28/tensor_name"
  input: "save/restore_slice_28/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_28"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Adam"
  input: "save/restore_slice_28"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_29/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Adam_1"
      }
    }
  }
}
node {
  name: "save/restore_slice_29/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_29"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_29/tensor_name"
  input: "save/restore_slice_29/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_29"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Adam_1"
  input: "save/restore_slice_29"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_30/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias"
      }
    }
  }
}
node {
  name: "save/restore_slice_30/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_30"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_30/tensor_name"
  input: "save/restore_slice_30/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_30"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias"
  input: "save/restore_slice_30"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_31/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Adam"
      }
    }
  }
}
node {
  name: "save/restore_slice_31/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_31"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_31/tensor_name"
  input: "save/restore_slice_31/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_31"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Adam"
  input: "save/restore_slice_31"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_32/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Adam_1"
      }
    }
  }
}
node {
  name: "save/restore_slice_32/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_32"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_32/tensor_name"
  input: "save/restore_slice_32/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_32"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Adam_1"
  input: "save/restore_slice_32"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_33/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
}
node {
  name: "save/restore_slice_33/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_33"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_33/tensor_name"
  input: "save/restore_slice_33/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_33"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
  input: "save/restore_slice_33"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_34/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Adam"
      }
    }
  }
}
node {
  name: "save/restore_slice_34/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_34"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_34/tensor_name"
  input: "save/restore_slice_34/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_34"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Adam"
  input: "save/restore_slice_34"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_35/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Adam_1"
      }
    }
  }
}
node {
  name: "save/restore_slice_35/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_35"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_35/tensor_name"
  input: "save/restore_slice_35/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_35"
  op: "Assign"
  input: "RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Adam_1"
  input: "save/restore_slice_35"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_36/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "beta1_power"
      }
    }
  }
}
node {
  name: "save/restore_slice_36/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_36"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_36/tensor_name"
  input: "save/restore_slice_36/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_36"
  op: "Assign"
  input: "beta1_power"
  input: "save/restore_slice_36"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_37/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "beta2_power"
      }
    }
  }
}
node {
  name: "save/restore_slice_37/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_37"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_37/tensor_name"
  input: "save/restore_slice_37/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_37"
  op: "Assign"
  input: "beta2_power"
  input: "save/restore_slice_37"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_38/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "fully_connected/biases"
      }
    }
  }
}
node {
  name: "save/restore_slice_38/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_38"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_38/tensor_name"
  input: "save/restore_slice_38/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_38"
  op: "Assign"
  input: "fully_connected/biases"
  input: "save/restore_slice_38"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_39/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "fully_connected/biases/Adam"
      }
    }
  }
}
node {
  name: "save/restore_slice_39/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_39"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_39/tensor_name"
  input: "save/restore_slice_39/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_39"
  op: "Assign"
  input: "fully_connected/biases/Adam"
  input: "save/restore_slice_39"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_40/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "fully_connected/biases/Adam_1"
      }
    }
  }
}
node {
  name: "save/restore_slice_40/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_40"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_40/tensor_name"
  input: "save/restore_slice_40/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_40"
  op: "Assign"
  input: "fully_connected/biases/Adam_1"
  input: "save/restore_slice_40"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/biases"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_41/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "fully_connected/weights"
      }
    }
  }
}
node {
  name: "save/restore_slice_41/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_41"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_41/tensor_name"
  input: "save/restore_slice_41/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_41"
  op: "Assign"
  input: "fully_connected/weights"
  input: "save/restore_slice_41"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_42/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "fully_connected/weights/Adam"
      }
    }
  }
}
node {
  name: "save/restore_slice_42/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_42"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_42/tensor_name"
  input: "save/restore_slice_42/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_42"
  op: "Assign"
  input: "fully_connected/weights/Adam"
  input: "save/restore_slice_42"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_slice_43/tensor_name"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: "fully_connected/weights/Adam_1"
      }
    }
  }
}
node {
  name: "save/restore_slice_43/shape_and_slice"
  op: "Const"
  attr {
    key: "dtype"
    value {
      type: DT_STRING
    }
  }
  attr {
    key: "value"
    value {
      tensor {
        dtype: DT_STRING
        tensor_shape {
        }
        string_val: ""
      }
    }
  }
}
node {
  name: "save/restore_slice_43"
  op: "RestoreSlice"
  input: "save/Const"
  input: "save/restore_slice_43/tensor_name"
  input: "save/restore_slice_43/shape_and_slice"
  attr {
    key: "dt"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "preferred_shard"
    value {
      i: -1
    }
  }
}
node {
  name: "save/Assign_43"
  op: "Assign"
  input: "fully_connected/weights/Adam_1"
  input: "save/restore_slice_43"
  attr {
    key: "T"
    value {
      type: DT_FLOAT
    }
  }
  attr {
    key: "_class"
    value {
      list {
        s: "loc:@fully_connected/weights"
      }
    }
  }
  attr {
    key: "use_locking"
    value {
      b: true
    }
  }
  attr {
    key: "validate_shape"
    value {
      b: true
    }
  }
}
node {
  name: "save/restore_all"
  op: "NoOp"
  input: "^save/Assign"
  input: "^save/Assign_1"
  input: "^save/Assign_2"
  input: "^save/Assign_3"
  input: "^save/Assign_4"
  input: "^save/Assign_5"
  input: "^save/Assign_6"
  input: "^save/Assign_7"
  input: "^save/Assign_8"
  input: "^save/Assign_9"
  input: "^save/Assign_10"
  input: "^save/Assign_11"
  input: "^save/Assign_12"
  input: "^save/Assign_13"
  input: "^save/Assign_14"
  input: "^save/Assign_15"
  input: "^save/Assign_16"
  input: "^save/Assign_17"
  input: "^save/Assign_18"
  input: "^save/Assign_19"
  input: "^save/Assign_20"
  input: "^save/Assign_21"
  input: "^save/Assign_22"
  input: "^save/Assign_23"
  input: "^save/Assign_24"
  input: "^save/Assign_25"
  input: "^save/Assign_26"
  input: "^save/Assign_27"
  input: "^save/Assign_28"
  input: "^save/Assign_29"
  input: "^save/Assign_30"
  input: "^save/Assign_31"
  input: "^save/Assign_32"
  input: "^save/Assign_33"
  input: "^save/Assign_34"
  input: "^save/Assign_35"
  input: "^save/Assign_36"
  input: "^save/Assign_37"
  input: "^save/Assign_38"
  input: "^save/Assign_39"
  input: "^save/Assign_40"
  input: "^save/Assign_41"
  input: "^save/Assign_42"
  input: "^save/Assign_43"
}
node {
  name: "init"
  op: "NoOp"
  input: "^RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Assign"
  input: "^RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Assign"
  input: "^RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Assign"
  input: "^RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Assign"
  input: "^RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Assign"
  input: "^RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Assign"
  input: "^RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Assign"
  input: "^RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Assign"
  input: "^RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Assign"
  input: "^RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Assign"
  input: "^RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Assign"
  input: "^RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Assign"
  input: "^fully_connected/weights/Assign"
  input: "^fully_connected/biases/Assign"
  input: "^beta1_power/Assign"
  input: "^beta2_power/Assign"
  input: "^RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Adam/Assign"
  input: "^RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Matrix/Adam_1/Assign"
  input: "^RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Adam/Assign"
  input: "^RNN/MultiRNNCell/Cell0/GRUCell/Gates/Linear/Bias/Adam_1/Assign"
  input: "^RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Adam/Assign"
  input: "^RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Matrix/Adam_1/Assign"
  input: "^RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Adam/Assign"
  input: "^RNN/MultiRNNCell/Cell0/GRUCell/Candidate/Linear/Bias/Adam_1/Assign"
  input: "^RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Adam/Assign"
  input: "^RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Matrix/Adam_1/Assign"
  input: "^RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Adam/Assign"
  input: "^RNN/MultiRNNCell/Cell1/GRUCell/Gates/Linear/Bias/Adam_1/Assign"
  input: "^RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Adam/Assign"
  input: "^RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Matrix/Adam_1/Assign"
  input: "^RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Adam/Assign"
  input: "^RNN/MultiRNNCell/Cell1/GRUCell/Candidate/Linear/Bias/Adam_1/Assign"
  input: "^RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Adam/Assign"
  input: "^RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Matrix/Adam_1/Assign"
  input: "^RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Adam/Assign"
  input: "^RNN/MultiRNNCell/Cell2/GRUCell/Gates/Linear/Bias/Adam_1/Assign"
  input: "^RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Adam/Assign"
  input: "^RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Matrix/Adam_1/Assign"
  input: "^RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Adam/Assign"
  input: "^RNN/MultiRNNCell/Cell2/GRUCell/Candidate/Linear/Bias/Adam_1/Assign"
  input: "^fully_connected/weights/Adam/Assign"
  input: "^fully_connected/weights/Adam_1/Assign"
  input: "^fully_connected/biases/Adam/Assign"
  input: "^fully_connected/biases/Adam_1/Assign"
}
versions {
  producer: 15
}
