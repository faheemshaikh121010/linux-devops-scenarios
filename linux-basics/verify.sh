#!/bin/bash

STEP=$1

case $STEP in

step1)
  if pwd | grep -q "devops-lab"; then
    echo "✅ Correct directory!"
    exit 0
  else
    echo "❌ Navigate to /root/devops-lab"
    exit 1
  fi
  ;;

step2)
  if ls /root/devops-lab | grep -q file1.txt; then
    echo "✅ Files exist!"
    exit 0
  else
    echo "❌ Files not found"
    exit 1
  fi
  ;;

step3)
  if [ -f /root/devops-lab/bigfile.log ]; then
    echo "✅ Disk checked (file exists)"
    exit 0
  else
    echo "❌ File missing"
    exit 1
  fi
  ;;

step4)
  if pgrep yes > /dev/null; then
    echo "✅ Process found!"
    exit 0
  else
    echo "❌ Process not found"
    exit 1
  fi
  ;;

step5)
  if ! pgrep yes > /dev/null; then
    echo "✅ Process killed!"
    exit 0
  else
    echo "❌ Process still running"
    exit 1
  fi
  ;;

step6)
  if [ ! -f /root/devops-lab/bigfile.log ]; then
    echo "✅ File deleted!"
    exit 0
  else
    echo "❌ File still exists"
    exit 1
  fi
  ;;

step7)
  if [ -f secure.txt ] && [ "$(stat -c %a secure.txt)" = "600" ]; then
    echo "✅ Permissions correct!"
    exit 0
  else
    echo "❌ Permissions wrong"
    exit 1
  fi
  ;;

*)
  echo "❌ Unknown step"
  exit 1
  ;;

esac
