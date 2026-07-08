#!/bin/bash

test -d ${HOME}/.R || mkdir ${HOME}/.R

CC=$(R CMD config CC)
CXX=$(R CMD config CXX)
cat <<EOF > ${HOME}/.R/Makevars
CC=ccache ${CC} -std=gnu2x
CC17=ccache ${CC} -std=gnu17
CC23=ccache ${CC} -std=gnu2x
CC90=ccache ${CC} -std=gnu90
CC99=ccache ${CC} -std=gnu99
CXX=ccache ${CXX}
CXX11=ccache ${CXX} #-std=c++11
CXX14=ccache ${CXX} #-std=c++14
CXX17=ccache ${CXX} #-std=c++17
CXX20=ccache ${CXX} #-std=c++20
CXX23=ccache ${CXX} #-std=c++23
EOF

test -d ${HOME}/.config/ccache || mkdir -p ${HOME}/.config/ccache

cfgfile=${HOME}/.config/ccache/ccache.conf

cat <<EOF > ${cfgfile}
# set base directory
base_dir = $(pwd)
# set cache location directory
cache_dir = $(pwd)/.ccache
# set max size, this is also the default value at GH
max_size = 10G
# important for R CMD INSTALL *.tar.gz as tarballs are expanded freshly -> fresh ctime
sloppiness = include_file_ctime
# also important as the (temporary) directory name will differ
hash_dir = false
EOF

