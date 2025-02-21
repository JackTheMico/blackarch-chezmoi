#!/bin/sh

# exit immediately if password-manager-binary is already in $PATH
type keepassxc-cli >/dev/null 2>&1 && exit

case "$(grep '^ID=' /etc/os-release | cut -d '=' -f 2)" in
blackarch)
  # commands to install password-manager-binary on Linux
  # use pacman because I use Manjaro
  sudo pacman -S --noconfirm --needed keepassxc
  ;;
kali)
  sudo apt update
  sudo apt install -y keepassxc
  ;;
*)
  echo "unsupported OS"
  exit 0
  ;;
esac
