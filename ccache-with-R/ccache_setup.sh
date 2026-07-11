#!/bin/bash

# set base and cache directories, helps against random paths
ccache --set-config "base_dir=$(pwd)"
ccache --set-config "cache_dir=$(pwd)/.ccache"
# important for R CMD INSTALL *.tar.gz as tarballs are expanded freshly -> fresh ctime, also mtime
ccache --set-config "sloppiness=include_file_ctime,include_file_mtime"
# also important as the (temporary) directory name will differ
ccache --set-config "hash_dir=false"
