#!/bin/bash
cd /home/kavia/workspace/code-generation/online-tic-tac-toe-182679-182688/tic_tac_toe_frontend
npm run lint 
$ESLINT_EXIT_CODE
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
  exit 1
fi

