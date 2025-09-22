#!/bin/sh

show_help() {
  echo "Usage: sync_vm <target_directory> <ip_address>"
  echo "Options:"
  echo "  --help  Display this message"
  echo "  --version Show the script version"
}

if [ "$#" -ne 2 ]; then
  show_help() exit 1
fi

while [[ "$1" != "" ]]; do
  case $1 in
  --help)
    show_help
    exit
    ;;
  --version)
    echo "sync_vm Version 1.0"
    exit
    ;;
  *)
    echo "Invalid option: $1"
    show_help
    exit 1
    ;;
  esac
  shift
done

TARGET_DIR="$1"
IP_ADDR="$2"

rsync -avz --delete "$TARGET_DIR" "developer@$IP_ADDR:/home/developer/projects"
