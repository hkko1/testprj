#!/bin/bash

if [ -z $1 ]
then
  echo "No parameter(branch name) passed"
  TAG="Undefined"
else
  GITHUB_REF=$1
  PROJECT_TYPE=$2

  if [[ "$PROJECT_TYPE" == *"-rc"* ]]
  then
    PROJECT="dev"
  else
    PROJECT="prod"
  fi

  TAG=`echo $GITHUB_REF | sed 's/refs\/tags\///g'`
  echo "branch is $GITHUB_REF"
  echo "NEWTAG is $TAG"
fi

echo "branch is $GITHUB_REF"
echo "NEWTAG is $TAG"
echo "PROJECT is $PROJECT"


