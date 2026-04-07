#!/bin/bash

STEP=$1

case $STEP in

step1)
  if [[ "$PWD" == "/root/devops-lab" ]]; then
    echo "✅ Correct directory!"
    exit 0
  else
    echo "❌ You are not in the correct directory"
    exit 1
  fi
  ;;

step2)
  if ls /root/devops-lab | grep -q file1.txt; then
    echo "✅ Files listed correctly!"
    exit 0
  else
    echo "❌ Files not found"
    exit 1
  fi
  ;;

step3)
  if du -sh /root/devops-lab/bigfile.log &>/dev/null; then
    echo "✅ Disk usage checked!"
    exit 0
  else
    echo "❌ Disk check not performed"
    exit 1
  fi
  ;;

step4)
  if pgrep yes > /dev/null; then
    echo "✅ High CPU process identified!"
    exit 0
  else
    echo "❌ Process not found"
    exit 1
  fi
  ;;

step5)
  if ! pgrep yes > /dev/null; then
    echo "✅ Process killed successfully!"
    exit 0
  else
    echo "❌ Process still running"
    exit 1
  fi
  ;;

step6)
  if [[ ! -f /root/devops-lab/bigfile.log ]]; then
    echo "✅ Disk space freed!"
    exit 0
  else
    echo "❌ File still exists"
    exit 1
  fi
  ;;

step7)
  if [[ -f secure.txt ]] && [[ $(stat -c "%a" secure.txt) == "600" ]]; then
    echo "✅ Permissions set correctly!"
    exit 0
  else
    echo "❌ Permissions incorrect"
    exit 1
  fi
  ;;

*)
  echo "❌ Unknown step"
  exit 1
  ;;

esac
