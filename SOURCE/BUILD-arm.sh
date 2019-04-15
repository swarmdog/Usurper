#!/bin/bash

set -e

fpc -B -Tlinux -Parm -Mtp -Scgi -CX -Cg -O3 -g -gl -Xs -XX -l -vewnhibq \
    -FiCOMMON -FiEDITOR -Fi../../RMDoor -Fi../obj/arm32-linux -FuCOMMON \
    -Fu../../RMDoor -FU../obj/arm32-linux -FE../bin/arm32-linux/ \
    EDITOR/EDITOR.PAS

fpc -B -Tlinux -Parm -Mtp -Scgi -CX -Cg -O3 -g -gl -Xs -XX -l -vewnhibq \
    -FiCOMMON -FiUSURPER -Fi../../RMDoor -Fi../obj/arm32-linux -FuCOMMON \
    -Fu../../RMDoor -FU../obj/arm32-linux -FE../bin/arm32-linux/ \
    USURPER/USURPER.PAS
