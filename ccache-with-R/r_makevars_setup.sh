#!/bin/bash

SYSNAME=$(uname)

## Set CC and CXX to defaults or (if given / existing) environment variable
if [ ${SYSNAME} = "Darwin" ]; then
    CC=${CC:-"clang"}
    CXX=${CXX:-"clang++"}
else
    # Linux and 'others' if any
    CC=${CC:-"gcc"}
    CXX=${CXX:-"g++"}
fi

## If we have R installed (say via r-ci) we can query what it has for CC and CXX
HASR=$(type -p R)
if [ "$HASR" != "" ]; then
    CC=$(R CMD config CC)
    CXX=$(R CMD config CXX)
fi

test -d ${HOME}/.R || mkdir ${HOME}/.R

cat <<EOF > ${HOME}/.R/Makevars
CC=ccache ${CC} -std=gnu2x
CC17=ccache ${CC} -std=gnu17
CC23=ccache ${CC} -std=gnu2x
CC90=ccache ${CC} -std=gnu90
CC99=ccache ${CC} -std=gnu99
CXX=ccache ${CXX}
CXX11=ccache ${CXX}
CXX14=ccache ${CXX}
CXX17=ccache ${CXX}
CXX20=ccache ${CXX}
CXX23=ccache ${CXX}
EOF
