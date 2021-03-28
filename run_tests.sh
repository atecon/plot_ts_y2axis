#!/bin/bash
set -e

DIR=$(dirname $(realpath "$0")) 	# locate folder where this sh-script is located in
SCRIPT="./tests/run_tests.inp"
PACKAGE_NAME="plot_ts_y2axis"

cd $DIR
echo "Switched to ${DIR}"

gretlcli -b -e -q ${SCRIPT}

if [ $? -eq 0 ]
then
  echo "Success: All tests passed for 'plot_ts_y2axis'."
  exit 0
else
  echo "Failure: Tests not passed for 'plot_ts_y2axis'." >&2
  exit 1
fi

