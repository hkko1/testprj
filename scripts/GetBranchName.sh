#!/bin/bash

if [ -z $1 ]
then
  echo "No parameter(branch name) passed"
  TAG="Undefined"
else
  GITHUB_REF=$1

  if [[ "$GITHUB_REF" == *"-rc"* ]]
  then
    TAG="develop"
    PROJECT="dev"
  else
    TAG="main"
    PROJECT="prod"
  fi

  echo "branch is $GITHUB_REF"
  echo "NEWTAG is $TAG"
fi

echo "branch is $GITHUB_REF"
echo "NEWTAG is $TAG"
echo "PROJECT is $PROJECT"

cp test.txt ./project_$PROJECT/test_$PROJECT.txt
