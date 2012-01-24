#!/bin/sh -e

VERSION=$2
TAR=../argus-pdp-pep-common_$VERSION.orig.tar.gz
DIR=argus-pdp-pep-common-$VERSION
TAG=`echo $VERSION | sed -e 's/\./_/g'`
REPO=http://svn.cern.ch/guest/glxa/pdp-pep-java-common

svn export $REPO/tags/${TAG} $DIR
GZIP=--best tar -c -z -f $TAR --exclude '*.jar' --exclude '*.class' $DIR
rm -rf $DIR 
rm ../$TAG
