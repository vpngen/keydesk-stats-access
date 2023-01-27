#!/bin/sh

username="_marina_"

remove() {
        printf "\033[32m Post Remove of a normal remove\033[0m\n"

        printf "\033[32m Reload the service unit from disk\033[0m\n"
        userdel -r "${username}"
}

purge() {
    printf "\033[32m Pre Remove purge, deb only\033[0m\n"
}

upgrade() {
    printf "\033[32m Pre Remove of an upgrade\033[0m\n"
}

echo "$@"

action="$1"

case "$action" in
  "0" | "remove")
    remove
    ;;
  "1" | "upgrade")
    upgrade
    ;;
  "purge")
    purge
    ;;
  *)
    printf "\033[32m Alpine\033[0m"
    remove
    ;;
esac