project2

If you want to compile Caffe in Ubuntu 16.04, you have to specify the path for HDF5 
in the Makefile.config. 
1. cp Makfile.config.example Makefile.config
2. vim Makefile.config
    Add "/usr/include/hdf5/serial/" in the following line in the Makefile.config:
    INCLUDE_DIRS := $(PYTHON_INCLUDE) /usr/local/include

Run 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64' before running 'make all/test/runtest'.



Proto_generator.py in caffe/examples: generate a file for structured sparsity 

can be used in caffe/examples/mnist/lenet_train_test_eltwise_decay.prototxt


the main change is in:
caffe/src/caffe/solvers/sgd_solver.cpp

caffe_axpy(net_params[param_id]->count(),

            local_decay,

            temp_[param_id]->cpu_data(),

            net_params[param_id]->mutable_cpu_diff());

        //calcuate the l1 regularization term

        if(params_individual_decays[param_id]){

        	caffe_mul(net_params[param_id]->count(),

				  net_params[param_id]->cpu_data(),

				  params_individual_decays[param_id]->cpu_data(),

				  temp_[param_id]->mutable_cpu_data()

				);

        	regularization_term = caffe_cpu_asum(net_params[param_id]->count(),temp_[param_id]->cpu_data());

        } else {

        	regularization_term = caffe_cpu_asum(net_params[param_id]->count(),net_params[param_id]->cpu_data());

        }

		regularization_term *= local_decay;

      } else {

        LOG(FATAL) << "Unknown regularization type: " << regularization_type;

      }