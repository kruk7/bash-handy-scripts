#!/bin/sh
#Intelij trial extender
cd ~/.config/JetBrains/IntelliJIdea2020.2/eval
rm idea202.evaluation.key
sed -i '/evlsprt/d' options/other.xml
cd ~/.java/.userPrefs/jetbrains
rm -rf pycharm*
