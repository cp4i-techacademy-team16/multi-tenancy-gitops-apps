#!/bin/sh
echo "Building BAR Auth Configuration"
###################
# INPUT VARIABLES #
###################
CONFIG_NAME="github-barauth"
CONFIG_TYPE="barauth"
CONFIG_NS="tools"
CONFIG_DESCRIPTION="Authentication for GitHub"
CONFIG_DATA_BASE64=$(base64 template-ace-barauth-data.json_template)
########################
# CREATE CONFIGURATION #
########################
( echo "cat <<EOF" ; cat template-ace-config-data.yaml_template ;) | \
CONFIG_NAME=${CONFIG_NAME} \
CONFIG_TYPE=${CONFIG_TYPE} \
CONFIG_NS=${CONFIG_NS} \
CONFIG_DESCRIPTION=${CONFIG_DESCRIPTION} \
CONFIG_DATA_BASE64=${CONFIG_DATA_BASE64} \
sh > ace-config-barauth.yaml
echo "BAR Auth Configuration has been created."