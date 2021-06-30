# Der Kommissar

Der Kommissar is a spack environment (or set of known good environments) which will provide a set of packages, typically provided via the OS package manager, but built using spack with 'together' concretization and intended for consumption by spack as a platform on which to build a dependent environment (e.g. e4s) for a target system. 

Building this environment generates the packages in the versions needed, and the script provided  will generate a packages.yaml formatted file, to be included in downstream environments.  

None of the packages contained herein should be built when the dependent environment is built. Furthermore, this environment should be built only with GCC, and at the GCC version level of the compiler used to build the dependent environment. In some cases, it may be possible to build these packages with llvm compilers instead of gcc compilers, but that is up to the discretion of the deployer. 

For LMOD installations, these packages are built with and made available through the Core compiler. 
