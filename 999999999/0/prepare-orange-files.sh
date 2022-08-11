#!/bin/bash
#===============================================================================
#
#          FILE:  prepare-orange-files.sh
#
#         USAGE:  ./999999999/0/prepare-orange-files.sh
#
#   DESCRIPTION:  ---
#
#       OPTIONS:  ---
#
#  REQUIREMENTS:  - Bash shell (or better)
#                 - ...
#          BUGS:  ---
#         NOTES:  ---
#        AUTHOR:  Emerson Rocha <rocha[at]ieee.org>
#       COMPANY:  EticaAI
#       LICENSE:  Public Domain dedication or Zero-Clause BSD
#                 SPDX-License-Identifier: Unlicense OR 0BSD
#       VERSION:  v1.0
#       CREATED:  2022-08-11 16:23 UTC
#      REVISION:  ---
#===============================================================================
# Comment next line if not want to stop on first error
set -e

# ROOTDIR="$(pwd)"

#### Functions _________________________________________________________________

#######################################
# Get an orange .ows file (its an XML) and output a pretty-formated file
# without python-pickle
#
# Globals:
#
# Arguments:
#   fontem
#   objectivum
# Outputs:
#
#######################################
format_orange_project_files() {
  fontem="$1"
  objectivum="${2}"

  set -x
  xmlstarlet val "${fontem}"

  xmlstarlet ed \
    --delete '//properties[@format="pickle"]' \
    "${fontem}" \
    >"${objectivum}"

  set +x
}

# #### Main ______________________________________________________________________

format_orange_project_files \
  "data-etl.temp.ows" \
  "data-etl__v2.temp.ows"
format_orange_project_files \
  "data-info-geo.temp.ows" \
  "data-info-geo.ows"
