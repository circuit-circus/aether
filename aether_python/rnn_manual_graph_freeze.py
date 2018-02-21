from __future__ import absolute_import
from __future__ import division
from __future__ import print_function

import os

import tensorflow as tf

#from tensorflow.python.framework import test_util
import freeze_graph as freeze_graph

checkpoint_dir = "final_checkpoint/"
checkpoint_state_name = "checkpoint_state"
input_graph_path = "graphs/"
input_graph_name = "input_graph_to_freeze.pb"
output_graph_name = "graphs/frozen_output_graph.pb"

input_checkpoint_path = checkpoint_dir + "final_checkpoint"
with tf.Session() as sess:
	new_saver = tf.train.import_meta_graph(input_checkpoint_path + ".meta")
	new_saver.restore(sess, input_checkpoint_path)
	tf.train.write_graph(sess.graph.as_graph_def(), input_graph_path, input_graph_name)

input_graph_path_final = input_graph_path + input_graph_name
input_saver_def_path = ""
input_binary = False
output_node_names = "X,Y_,Hin,pkeep,batchsize,Yo,H"
restore_op_name = "save/restore_all"
filename_tensor_name = "save/Const:0"
output_graph_path = output_graph_name
clear_devices = False

freeze_graph.freeze_graph(input_graph_path_final, input_saver_def_path, input_binary, input_checkpoint_path,
	output_node_names, restore_op_name,
	filename_tensor_name, output_graph_path, clear_devices, "")