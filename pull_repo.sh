#! /bin/bash

filename='.gitmodules'
branch='  branch = Future'

#git clone git@github.com:zimea/infectionSpread.git
#git submodule add git@github.com:stefanradev93/BayesFlow.git

if [[ ! -e $filename ]]; then
  touch $ $filename
fi

if ! grep -q "branch" $filename ; then
  echo $branch >> $filename
fi
git submodule update --remote
