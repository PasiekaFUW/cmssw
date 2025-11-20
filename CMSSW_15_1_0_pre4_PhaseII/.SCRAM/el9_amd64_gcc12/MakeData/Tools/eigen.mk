ALL_TOOLS      += eigen
eigen_EX_INCLUDE := /cvmfs/cms.cern.ch/el9_amd64_gcc12/external/eigen/3bb6a48d8c171cf20b5f8e48bfb4e424fbd4f79e-5d91c922e771c0dc4f6bc00f61f3e2c5/include /cvmfs/cms.cern.ch/el9_amd64_gcc12/external/eigen/3bb6a48d8c171cf20b5f8e48bfb4e424fbd4f79e-5d91c922e771c0dc4f6bc00f61f3e2c5/include/eigen3
eigen_EX_FLAGS_CUDA_FLAGS  := --diag-suppress 20014
eigen_EX_FLAGS_CXXFLAGS  := -DEIGEN_DONT_PARALLELIZE -DEIGEN_MAX_ALIGN_BYTES=64

