#!/usr/bin/env bash

# Run this from the project root

# these file types require bin/inject_participant_id.rb to add the participant_id field
#   event_log, bitalino, tobii

BIN_DIR="`pwd`/bin"
LOAD_FILES_DIR="`pwd`/load_files"
mkdir -p "${LOAD_FILES_DIR}"

TEMP_DIR="`pwd`/temp_files"
mkdir -p "${TEMP_DIR}"

TABLE_NAME="demographics"
SOURCE_HEADER_TEXT="participant"  # This identifies file headers we need to discard
TEMP_RAW_FILE="${TEMP_DIR}/${TABLE_NAME}_raw.csv"
LOAD_FILE="${LOAD_FILES_DIR}/${TABLE_NAME}_load_file.csv"
cat csv_headers/${TABLE_NAME}_header.csv > ${LOAD_FILE}
find ./dataset/HPO-CLD/ -iname \*${TABLE_NAME}\*.csv -exec cat {} \; | grep -i -v ${SOURCE_HEADER_TEXT} | ${BIN_DIR}/fix_demographics.rb %  > ${TEMP_RAW_FILE}
cat ${TEMP_RAW_FILE} >> ${LOAD_FILE}
rm ${TEMP_RAW_FILE}
dos2unix ${LOAD_FILE}

TABLE_NAME="labels"
SOURCE_HEADER_TEXT="participant"  # This identifies file headers we need to discard
TEMP_RAW_FILE="${TEMP_DIR}/${TABLE_NAME}_raw.csv"
LOAD_FILE="${LOAD_FILES_DIR}/${TABLE_NAME}_load_file.csv"
cat csv_headers/${TABLE_NAME}_header.csv > ${LOAD_FILE}
find ./dataset/HPO-CLD/ -iname \*${TABLE_NAME}\*.csv -exec cat {} \; | grep -i -v ${SOURCE_HEADER_TEXT} > ${TEMP_RAW_FILE}
cat ${TEMP_RAW_FILE} >> ${LOAD_FILE}
rm ${TEMP_RAW_FILE}
dos2unix ${LOAD_FILE}

TABLE_NAME="event_log"
SOURCE_HEADER_TEXT="event_time_stamp"  # This identifies file headers we need to discard
TEMP_RAW_FILE="${TEMP_DIR}/${TABLE_NAME}_raw.csv"
LOAD_FILE="${LOAD_FILES_DIR}/${TABLE_NAME}_load_file.csv"
cat csv_headers/${TABLE_NAME}_header.csv > load_files/${TABLE_NAME}_load_file.csv
find ./dataset/HPO-CLD/ -iname \*${TABLE_NAME}\*.csv | grep -i -v ${SOURCE_HEADER_TEXT} | xargs -I % ${BIN_DIR}/inject_participant_id.rb %  > ${TEMP_RAW_FILE}
cat ${TEMP_RAW_FILE} >> ${LOAD_FILE}
rm ${TEMP_RAW_FILE}
dos2unix ${LOAD_FILE}

TABLE_NAME="tobii"
SOURCE_HEADER_TEXT="device_time_stamp"  # This identifies file headers we need to discard
TEMP_RAW_FILE="${TEMP_DIR}/${TABLE_NAME}_raw.csv"
LOAD_FILE="${LOAD_FILES_DIR}/${TABLE_NAME}_load_file.csv"
cat csv_headers/${TABLE_NAME}_header.csv > load_files/${TABLE_NAME}_load_file.csv
find ./dataset/HPO-CLD/ -iname \*${TABLE_NAME}\*.csv | grep -i -v ${SOURCE_HEADER_TEXT} | xargs -I % ${BIN_DIR}/inject_participant_id.rb %  > ${TEMP_RAW_FILE}
cat ${TEMP_RAW_FILE} >> ${LOAD_FILE}
rm ${TEMP_RAW_FILE}
dos2unix ${LOAD_FILE}

TABLE_NAME="bitalino"
SOURCE_HEADER_TEXT="A1,A2"  # This identifies file headers we need to discard
TEMP_RAW_FILE="${TEMP_DIR}/${TABLE_NAME}_raw.csv"
LOAD_FILE="${LOAD_FILES_DIR}/${TABLE_NAME}_load_file.csv"
cat csv_headers/${TABLE_NAME}_header.csv > load_files/${TABLE_NAME}_load_file.csv
find ./dataset/HPO-CLD/ -iname \*${TABLE_NAME}\*.csv | grep -i -v ${SOURCE_HEADER_TEXT} | xargs -I % ${BIN_DIR}/inject_participant_id.rb %  > ${TEMP_RAW_FILE}
cat ${TEMP_RAW_FILE} >> ${LOAD_FILE}
rm ${TEMP_RAW_FILE}
dos2unix ${LOAD_FILE}

echo "Build Files Complete"
