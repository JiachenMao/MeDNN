#./../../../build/tools/caffe train --solver=./solver.prototxt --weights=./models/vgg16.caffemodel --gpu 1
#./../../../build/tools/caffe train --solver=./vgg16_solver_group_lasso.prototxt --weights=./models/snapshot_iter_1668.caffemodel --gpu=1 
#--weights=./models/vgg16_original.caffemodel
#--snapshot_prefix ./models/vgg16_original
#./../../../build/tools/caffe train --solver=./vgg16_solver_group_lasso.prototxt --snapshot ./models/snapshot_iter_1668.solverstate
#./../../../build/tools/caffe train --solver=./solver_lasso.prototxt --weights=./models/caffenet_SSL_0.4259.caffemodel --gpu=0 > mjc_log_gpu1.txt 2>&1
#./../../../build/tools/caffe train --solver=./solver_lasso.prototxt --weights=./models/caffenet_SSL_0.4259.caffemodel --gpu=2 > mjc_log_gpu2.txt 2>&1




#./../../../build/tools/caffe train --solver=./vgg16_solver_fine_tuning.prototxt --weights=./models/group_lassoo_iter_9000.caffemodel --gpu=1



#./../../../build/tools/caffe train --solver=./solver_lasso.prototxt --weights=./models/lasso_mjc_gpu2__iter_240000.caffemodel --gpu=0

#instruction for group lasso
./../../../build/tools/caffe train --solver=./solver_lasso.prototxt --weights=./models/caffenet_SSL_0.4259.caffemodel --gpu=0 > mjc_log_gpu1.txt 2>&1
./../../../build/tools/caffe train --solver=./solver_lasso.prototxt --weights=./models/caffenet_SSL_0.4259.caffemodel --gpu=2 > mjc_log_gpu2.txt 2>&1

#instruction for fine tuning
./../../../build/tools/caffe train --solver=./solver_finetune.prototxt --weights=./models/lasso_mjc_gpu1__iter_240000.caffemodel --gpu=0 > mjc_log_finetune_gpu1.txt 2>&1
./../../../build/tools/caffe train --solver=./solver_finetune.prototxt --weights=./models/lasso_mjc_gpu2__iter_240000.caffemodel --gpu=2 > mjc_log_finetune_gpu2.txt 2>&1