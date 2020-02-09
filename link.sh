#!/bin/bash
read -p "Graphical (g) or ascii (a)`echo $'\n> '`" answer
if [ "$answer" == "g" ]; then
    cp -fvr ./conf/graphical/* ./../data/
else
    cp -fvr ./conf/ascii/* ./../data/
fi

