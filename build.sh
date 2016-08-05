#!/bin/bash

if [ -f /build_in/custom_before.sh ]; then
  cd /build_in
  sh /build_in/custom_before.sh
fi

cd ${BUILD_DIR}

mvn ${BUILD_OPTIONS} ${BUILD_TARGET}

if [ -f /build_in/custom_after.sh ]; then
  cd /build_in
  sh /build_in/custom_after.sh
fi

