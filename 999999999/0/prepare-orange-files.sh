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

ROOTDIR="$(pwd)"

#### Functions _________________________________________________________________

#######################################
# Get an orange .ows file (its an XML) and output a pretty-formated file
# without python-pickle
#
# Globals:
#   ROOTDIR
# Arguments:
#   filename
#   iri
# Outputs:
#
#######################################
format_orange_project_files() {
  fontem="$1"
  objectivum="${2}"

  echo "TODO [${fontem}] [${objectivum}]"

  # objectivum_archivum_temporarium="$ROOTDIR/999999/0/${filename}"

  # if [ -f "$objectivum_archivum_temporarium" ]; then
  #   echo "Already cached [$objectivum_archivum_temporarium]"
  #   return 0
  # else
  #   echo "Not cached. Downloading now... [$objectivum_archivum_temporarium] [$iri]"
  # fi

  # curl --compressed --silent --show-error \
  #   -get "$iri" \
  #   --output "$objectivum_archivum_temporarium"
}

# #### Main ______________________________________________________________________


format_orange_project_files \
  "data-etl.temp.ows" \
  "data-etl__v2.temp.ows"

# download_to_temp_if_need \
#   "1603_16_1_0.no1.bcp47.csv" \
#   "https://raw.githubusercontent.com/MDCIII/1603_16_1/main/1603/16/1/0/1603_16_1_0.no1.bcp47.csv"

# download_to_temp_if_need \
#   "1603_9966_1_0.no1.bcp47.csv" \
#   "https://raw.githubusercontent.com/MDCIII/1603_9966_1/main/1603/9966/1/0/1603_9966_1_0.no1.bcp47.csv"

# # @see https://docs.google.com/spreadsheets/d/1NjSI2LaS3SqbgYc0HdD8oIb7lofGtiHgoKKATCpwVdY/edit#gid=1088874596
# # @see https://proxy.hxlstandard.org/data/edit?dest=data_edit&filter01=cut&cut-skip-untagged01=on&strip-headers=on&url=https%3A%2F%2Fdocs.google.com%2Fspreadsheets%2Fd%2F1NjSI2LaS3SqbgYc0HdD8oIb7lofGtiHgoKKATCpwVdY%2Fedit%23gid%3D1088874596
# # COD-AB-001 = UN M49 001 = World level
# download_to_temp_if_need \
#   "unocha-cod-ab-001.hxl.csv" \
#   "https://proxy.hxlstandard.org/data.csv?dest=data_edit&filter01=cut&cut-skip-untagged01=on&strip-headers=on&url=https%3A%2F%2Fdocs.google.com%2Fspreadsheets%2Fd%2F1NjSI2LaS3SqbgYc0HdD8oIb7lofGtiHgoKKATCpwVdY%2Fedit%23gid%3D1088874596"

# #### Done ______________________________________________________________________
# # After here is just internal testing, mostly non-public files yet
# # The next line exit

# exit 0

# # - These scripts are from:
# #   - https://github.com/EticaAI/lexicographi-sine-finibus
# # - They use as base:
# #   - /workspace/git/EticaAI/lexicographi-sine-finibus/officina

# ROOTDIR_OLD="$ROOTDIR"
# ROOTDIR_NEW="/workspace/git/EticaAI/lexicographi-sine-finibus/officina"
# TEMPDIR="${ROOTDIR_OLD}/999999/0"

# set -x

# cd "${ROOTDIR_NEW}" || exit 1

# pwd

# "${ROOTDIR_NEW}/999999999/0/999999999_521850.py" \
#   --methodus-fonti=worldbank \
#   --methodus=aid-effectiveness \
#   --objectivum-formato=csv \
#   >"${TEMPDIR}/worldbank_aid-effectiveness.csv"

# "${ROOTDIR_NEW}/999999999/0/999999999_521850.py" \
#   --methodus-fonti=worldbank \
#   --methodus=poverty \
#   --objectivum-formato=csv \
#   >"${TEMPDIR}/worldbank_poverty.csv"

# "${ROOTDIR_NEW}/999999999/0/999999999_521850.py" \
#   --methodus-fonti=worldbank \
#   --methodus=poverty \
#   --objectivum-formato=csv \
#   >"${TEMPDIR}/worldbank_climate-change.csv"

# set +x
# cd "$ROOTDIR_OLD" || exit 0



# # - https://google.github.io/styleguide/
# #   - https://google.github.io/styleguide/xmlstyle.html
# #     - "Documents MAY be pretty-printed using 2-space indentation for
# #       child elements."
# # xmllint --format data-etl.temp.ows > data-etl__v2.temp.ows
