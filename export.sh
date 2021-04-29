#!/usr/bin/env bash

make
rm -fr src

mkdir -p src
cp sgp-common/sgp_git_version.c sgp-common/sgp_git_version.h src
cp sgp30/sgp30.h sgp30/sgp30.c src
cp sgp40/sgp40.h sgp40/sgp40.c src
cp sgp40_voc_index/sensirion_voc_algorithm.h sgp40_voc_index/sensirion_voc_algorithm.c sgp40_voc_index/sgp40_voc_index.h sgp40_voc_index/sgp40_voc_index.c src
cp sgpc3/sgpc3.h sgpc3/sgpc3.c src
cp sgpc3_with_shtc1/sgpc3_with_shtc1.h sgpc3_with_shtc1/sgpc3_with_shtc1.c src
cp svm30/svm30.h svm30/svm30.c src

rm -fr \
    .circleci \
    .github \
    docs \
    embedded-common \
    embedded-sht \
    sgp-common \
    sgp30 \
    sgp40 \
    sgp40_voc_index \
    sgpc3 \
    sgpc3_with_shtc1 \
    svm30 \
    tests \
    .clang-format \
    CHANGELOG.md \
    LICENSE \
    Makefile \
    README.md

git add src
git cia -m"New cleaning"

# EOF
