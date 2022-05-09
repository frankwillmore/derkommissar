# Der Kommissar

<i>Der Kommissar - the local authority.</i>

Der Kommissar is a spack environment (or set of known good environments) which will build out a set of lower-level dependencies that are typically provided via the OS package manager, but at a newer release level, to reduce the complexity of spack concretization of higher level dependencies. These are built with 'together' concretization and can be regarded as localization platform for a dependent envirbnment (e.g. e4s) for a target system. 

Building this environment generates the packages in the versions needed, and the build_dk.sh script provided will generate dk.yaml, a  packages.yaml stanza, to be included in downstream environments.  

None of the packages contained herein should be built when the dependent environment is built. Furthermore, this environment should be built only with GCC, and at the GCC version level of the compiler used to build the dependent environment. In some cases, it may be possible to build these packages with llvm compilers instead of gcc compilers, but that is up to the discretion of the deployer. 

Standardizing on the set of packages and concretizing together insures that they are as compatible as possible with one another, and also reduces the number of redundant (and sometimes failing) builds. 

For LMOD installations, these packages are built with and made available through the Core compiler. 

Just for fun: https://www.youtube.com/watch?v=8-bgiiTxhzM&ab_channel=FalcoVEVO
