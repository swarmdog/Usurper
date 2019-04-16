#!/bin/bash
# On Raspbian - Install pre-reqs: sudo apt-get -y install fpc fp-units-fv 
# Fetch https://github.com/rickparrish/RMDoor to a directory side by side with Usurper
set -e

fpc -B -Tlinux -Parm -Mtp -Scgi -CX -Cg -O3 -g -gl -Xs -XX -l -vewnhibq \
    -FiCOMMON -FiEDITOR -Fi../../RMDoor -Fi../obj/arm32-linux -FuCOMMON \
    -Fu../../RMDoor -FU../obj/arm32-linux -FE../bin/arm32-linux/ \
    EDITOR/EDITOR.PAS

fpc -B -Tlinux -Parm -Mtp -Scgi -CX -Cg -O3 -g -gl -Xs -XX -l -vewnhibq \
    -FiCOMMON -FiUSURPER -Fi../../RMDoor -Fi../obj/arm32-linux -FuCOMMON \
    -Fu../../RMDoor -FU../obj/arm32-linux -FE../bin/arm32-linux/ \
    USURPER/USURPER.PAS
