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

#print("Getting parameters")
sys.stdout.flush()
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

#print("Getting directory")
#sys.stdout.flush()
if os.path.dirname(__file__) != '':
    os.chdir(os.path.dirname(__file__))
currentDirectory = os.getcwd()

#print("Setting variables")
sys.stdout.flush()
# these must match what was saved !
ALPHASIZE = my_txtutils.ALPHASIZE
NLAYERS = 3
INTERNALSIZE = 512

hitchhikersA0 = currentDirectory + "/aether/checkpoints/rnn_train_1518875836-3000000"

# use topn=10 for all but the last one which works with topn=2 for Shakespeare and topn=3 for Python
author = hitchhikersA0

ncnt = 0
generatedResult = ""
with tf.Session() as sess:
    #print("Importing meta graph: " + author)
    #sys.stdout.flush()
    new_saver = tf.train.import_meta_graph(author + ".meta")
    #print("Restoring meta graph: " + author)
    #sys.stdout.flush()
    new_saver.restore(sess, author)
    #print("Converting data")
    #sys.stdout.flush()
    x = my_txtutils.convert_from_alphabet(ord("L"))
    #print("Tensoring array with NumPy")
    #sys.stdout.flush()
    x = np.array([[x]])  # shape [BATCHSIZE, SEQLEN] with BATCHSIZE=1 and SEQLEN=1

    # initial values
    y = x
    #print("Setting np.zeros")
    #sys.stdout.flush()
    h = np.zeros([1, INTERNALSIZE * NLAYERS], dtype=np.float32)  # [ BATCHSIZE, INTERNALSIZE * NLAYERS]
    for i in range(75):
        #print("Running session. On step " + str(i) + " of 75")
        #sys.stdout.flush()
        yo, h = sess.run(['Yo:0', 'H:0'], feed_dict={'X:0': y, 'pkeep:0': 1., 'Hin:0': h, 'batchsize:0': 1})

        # If sampling is be done from the topn most likely characters, the generated text
        # is more credible and more "english". If topn is not set, it defaults to the full
        # distribution (ALPHASIZE)

        # Recommended: topn = 10 for intermediate checkpoints, topn=2 or 3 for fully trained checkpoints

        c = my_txtutils.sample_from_probabilities(yo, topn=5)
        y = np.array([[c]])  # shape [BATCHSIZE, SEQLEN] with BATCHSIZE=1 and SEQLEN=1
        c = chr(my_txtutils.convert_to_alphabet(c))
        generatedResult = generatedResult + c

        if c == '\n':
            ncnt = 0
        else:
            ncnt += 1
        if ncnt == 100:
            ncnt = 0
    #print("Done with session. Here's your answer.")
    #sys.stdout.flush()

    # Source: https://medium.com/@HolmesLaurence/integrating-node-and-python-6b8454bfc272
    # Print the final result so we can pick it up in Node.js
    print(generatedResult)
    sys.stdout.flush()