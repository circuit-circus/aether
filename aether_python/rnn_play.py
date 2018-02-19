# encoding: UTF-8
# Copyright 2017 Google.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

import tensorflow as tf
import numpy as np
import my_txtutils
import os
import sys
import glob

debugging = True

# this text collating is slow. Should be done before hand and saved to a file
alltext = ""
dataname = "aether"
datadir = dataname + "/data/*.txt"

datalist = glob.glob(datadir, recursive=True)
for datafile in datalist:
    datafileobj = open(datafile, "r")
    datatext = datafileobj.read()
    print("Loading file " + datafile)
    alltext = alltext + datatext
    datafileobj.close()

chars = sorted(list(set(alltext)))
print('total chars:', len(chars))
print(chars);
char_indices = dict((c, i) for i, c in enumerate(chars))

# Import parameters
questionTxt = ""
if len(sys.argv) > 1:
    questionTxt = sys.argv[1]

planetName = ""
if len(sys.argv) > 2:
    planetName = sys.argv[2]

questionAnswer = ""
if len(sys.argv) > 3:
    questionAnswer = sys.argv[3]

if os.path.dirname(__file__) != '':
    os.chdir(os.path.dirname(__file__))
currentDirectory = os.getcwd()

# these must match what was saved !
ALPHASIZE = my_txtutils.ALPHASIZE
NLAYERS = 3
INTERNALSIZE = 512

generatedResult = ""
# if you want to use a different graph, you have to freeze a new one with rnn_manual_graph_freeze.py
output_graph_name = "aether/graphs/frozen_output_graph.pb"
with tf.Session() as sess:
    x = my_txtutils.convert_from_alphabet(ord("L"))

    x = np.array([[x]])  # shape [BATCHSIZE, SEQLEN] with BATCHSIZE=1 and SEQLEN=1

    # initial values
    y = x

    h = np.zeros([1, INTERNALSIZE * NLAYERS], dtype=np.float32)  # [ BATCHSIZE, INTERNALSIZE * NLAYERS]

    # Use frozen graph for increased speed
    with tf.Graph().as_default():
        output_graph_def = tf.GraphDef()
        # Get this graph and import it
        with open(output_graph_name, "rb") as f:
            output_graph_def.ParseFromString(f.read())
            _ = tf.import_graph_def(output_graph_def, name="")

        with tf.Session() as sess:
            output_node = sess.graph.get_tensor_by_name("Y_:0")

            for i in range(75):
                sentence = "These violent delights will have violent ends."

                x_pred = np.zeros([1, INTERNALSIZE * NLAYERS], dtype=np.float32)
                print(x_pred[0][0])

                for t, char in enumerate(sentence):
                    x_pred[0, char_indices[char]] = 1.

                print(x_pred[0][0])

                yo, x_pred = sess.run(['Yo:0', 'H:0'], feed_dict={'X:0': y, 'pkeep:0': 1., 'Hin:0': x_pred, 'batchsize:0': 1})

                # If sampling is be done from the topn most likely characters, the generated text
                # is more credible and more "english". If topn is not set, it defaults to the full
                # distribution (ALPHASIZE)

                # Recommended: topn = 10 for intermediate checkpoints, topn=2 or 3 for fully trained checkpoints

                c = my_txtutils.sample_from_probabilities(yo, topn=5)
                y = np.array([[c]])  # shape [BATCHSIZE, SEQLEN] with BATCHSIZE=1 and SEQLEN=1
                c = chr(my_txtutils.convert_to_alphabet(c))
                generatedResult = generatedResult + c
    if debugging:
        print("Done with session. Here's your answer.")
        sys.stdout.flush()

    # Source: https://medium.com/@HolmesLaurence/integrating-node-and-python-6b8454bfc272
    # Print the final result so we can pick it up in Node.js
    print(generatedResult)
    sys.stdout.flush()