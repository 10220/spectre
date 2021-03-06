#!/bin/env sh

# Distributed under the MIT License.
# See LICENSE.txt for details.

spectre_setup_modules() {
    echo "All modules on Minerva are provided by the system"
}

spectre_unload_modules() {
    module unload gcc-7.3.0-gcc-7.3.0-pqzvlyr
    module unload blaze-3.2-gcc-7.3.0-d4xgiej
    module unload boost-1.66.0-gcc-7.3.0-rzvaoux
    module unload brigand-master-gcc-7.3.0-3m5ibui
    module unload catch-2.2.1-gcc-7.3.0-naocwdf
    module unload charm-6.8.2-gcc-7.3.0-rqlew72
    module unload cmake-3.11.4-gcc-7.3.0-3ru42p7
    module unload gsl-2.4-gcc-7.3.0-yobvdek
    module unload hdf5-1.10.1-gcc-7.3.0-w32z4ik
    module unload jemalloc-4.5.0-gcc-7.3.0-wlf2m7r
    module unload libxsmm-1.9-gcc-7.3.0-npctj4l
    module unload openblas-0.3.0-gcc-7.3.0-cjwkbox
    module unload yaml-cpp-develop-gcc-7.3.0-qcfbbll
}

spectre_load_modules() {
    module load gcc-7.3.0-gcc-7.3.0-pqzvlyr
    module load blaze-3.2-gcc-7.3.0-d4xgiej
    module load boost-1.66.0-gcc-7.3.0-rzvaoux
    module load brigand-master-gcc-7.3.0-3m5ibui
    module load catch-2.2.1-gcc-7.3.0-naocwdf
    module load charm-6.8.2-gcc-7.3.0-rqlew72
    module load cmake-3.11.4-gcc-7.3.0-3ru42p7
    module load gsl-2.4-gcc-7.3.0-yobvdek
    module load hdf5-1.10.1-gcc-7.3.0-w32z4ik
    module load jemalloc-4.5.0-gcc-7.3.0-wlf2m7r
    module load libxsmm-1.9-gcc-7.3.0-npctj4l
    module load openblas-0.3.0-gcc-7.3.0-cjwkbox
    module load yaml-cpp-develop-gcc-7.3.0-qcfbbll
}

spectre_run_cmake() {
    if [ -z ${SPECTRE_HOME} ]; then
        echo "You must set SPECTRE_HOME to the cloned SpECTRE directory"
        return 1
    fi
    spectre_load_modules
    cmake -D CMAKE_BUILD_TYPE=Release $SPECTRE_HOME
}
