#!/bin/sh

set -ex
cd "$(dirname "$(dirname "$0")")"

yum install -y make gcc glibc-devel texinfo ant

rm archive/*
ant jar && ant archive-platform-jar
