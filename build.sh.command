#!/bin/bash

# dnajs-webpack-to-do-app
#
# To make this file runnable:
#     $ chmod +x build.sh.command

banner="dnajs-webpack-to-do-app"
projectHome=$(cd $(dirname $0); pwd)

setupTools() {
   cd $projectHome
   echo
   echo $banner
   echo $(echo $banner | sed s/./=/g)
   pwd
   echo
   echo "Node.js:"
   which node || { echo "Need to install Node.js: https://nodejs.org"; exit; }
   node --version
   npm install --no-fund
   npm update
   npm outdated
   echo
   }

buildProject() {
   cd $projectHome
   echo "webpack.config.js:"
   npm test
   echo
   echo "Dist folder:"
   cd dist
   ls -o
   sleep 2
   open index.html
   echo
   }

setupTools
buildProject
