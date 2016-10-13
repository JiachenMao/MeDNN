#!/usr/bin/env sh

# (1)first, we train a model using group lasso:

./../../build/tools/caffe train --solver=./lenet_solver.prototxt 
# for resuming an existing model: --snapshot ./mjc_itration_data/lenet_mjc_iter_5000.solverstate 
# for log: > ./mjc_log/lenet_oct_12_11am.txt 2>&1

# (2)second, we fine tuning the sparsed model
./../../build/tools/caffe train --solver=./lenet_solver.prototxt --snapshot ./mjc_itration_data/lenet_mjc_iter_5000.solverstate
