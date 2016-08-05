#!/bin/bash

echo "copying war file into output"
cp ${BUILD_DIR}/openid-connect-server-webapp/target/openid-connect-server-webapp.war /build_out

echo "cleaning"
rm -rf ${BUILD_DIR}/*

