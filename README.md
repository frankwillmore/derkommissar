# Der Kommissar

Der Kommissar is a spack environment (or set of known good environments) which will provide a set of packages, typically provided via the package manager, but with together concretization and built for the target system. 

Building this environment generates the packages in the versions needed. 
A script is provided which will generate a packages.yaml formatted file, to be included in downstream environments, e.g. e4s. 

None of the packages contained herein would be built when the dependent environment is built. Furthermore, this environment should be built only with GCC, and only at the GCC version level of the compiler used to build the dependent environment. In some cases, it may be possible to build these packages with llvm compilers instead of gcc compilers, but that is up to the discretion of the deployer. 
