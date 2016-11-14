#./../../../build/tools/caffe train --solver=./solver.prototxt --weights=./models/vgg16.caffemodel --gpu 1
#./../../../build/tools/caffe train --solver=./vgg16_solver_group_lasso.prototxt --weights=./models/snapshot_iter_1668.caffemodel --gpu=1 
#--weights=./models/vgg16_original.caffemodel
#--snapshot_prefix ./models/vgg16_original
#./../../../build/tools/caffe train --solver=./vgg16_solver_group_lasso.prototxt --snapshot ./models/snapshot_iter_1668.solverstate
./../../../build/tools/caffe train --solver=./vgg16_solver_group_lasso.prototxt --weights=./models/group_lassoo_11_8__iter_95000.caffemodel --gpu=1




#./../../../build/tools/caffe train --solver=./vgg16_solver_fine_tuning.prototxt --weights=./models/group_lassoo_iter_9000.caffemodel --gpu=1