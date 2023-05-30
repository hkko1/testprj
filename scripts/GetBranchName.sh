#!/bin/bash

if [ -z $1 ]
then
  echo "No parameter(branch name) passed"
  TAG="Undefined"
else
  GITHUB_REF=$1
  BRANCH=`echo $GITHUB_REF | sed 's/refs\/heads\///g'| sed 's/\//-/g'`
  TAG=`echo $GITHUB_REF | sed 's/\//-/g'`
  echo $BRANCH
  echo $TAG
fi

echo "branch is $BRANCH"
echo "TAG is $TAG"