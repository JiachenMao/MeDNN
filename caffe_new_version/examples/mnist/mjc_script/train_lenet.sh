#!/usr/bin/env sh
# for resuming an existing model: --snapshot ./../mjc_itration_data/lenet_mjc_iter_5000.solverstate 
# for log: > ./mjc_log/lenet_oct_12_11am.txt 2>&1


# (1)first, we train a model using group lasso:
./../../../build/tools/caffe train --solver=./mjc_lenet_solver_step1_grouplasso.prototxt --gpu=1
# > mjc_log_lenet.txt 2>&1


# (2)second, we fine tuning the sparsed model
#./../../../build/tools/caffe train --solver=./mjc_lenet_solver_step2_finetuning.prototxt --snapshot ./mjc_itration_data/lenet_mjc_iter_10000.solverstate
