#!/bin/bash

set -e

clear
echo -e "\e[1;35m"
cat << "EOF"
 /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\
( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )
 > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ < 
 /\_/\        █████               ██████   █████                                            /\_/\
( o.o )     ███░░░███            ░░██████ ░░███                                            ( o.o )
 > ^ <     ███   ░░███ █████ █████░███░███ ░███   ██████  █████ █████  ██████  ████████     > ^ < 
 /\_/\    ░███    ░███░░███ ░░███ ░███░░███░███  ███░░███░░███ ░░███  ░░░░░███░░███░░███    /\_/\
( o.o )   ░███    ░███ ░░░█████░  ░███ ░░██████ ░███████  ░░░█████░    ███████ ░███ ░░░    ( o.o )
 > ^ <    ░░███   ███   ███░░░███ ░███  ░░█████ ░███░░░    ███░░░███  ███░░███ ░███         > ^ < 
 /\_/\     ░░░█████░   █████ ██████████  ░░█████░░██████  █████ █████░░█████████████        /\_/\
( o.o )      ░░░░░░   ░░░░░ ░░░░░░░░░░    ░░░░░  ░░░░░░  ░░░░░ ░░░░░  ░░░░░░░░░░░░░        ( o.o )
 > ^ <                                                                                      > ^ < 
 /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\  /\_/\
( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )( o.o )
 > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ <  > ^ < 
                                    Guide by 0xNexar
EOF
echo -e "\e[0m"
sleep 2

echo "🔄 Updating & upgrading system..."
sudo apt update && sudo apt upgrade -y

echo "📦 Installing required packages..."
sudo apt install -y build-essential \
  curl \
  wget \
  git \
  unzip \
  pkg-config \
  software-properties-common \
  screen \
  iptables \
  lz4 \
  jq \
  make \
  gcc \
  nano \
  automake \
  autoconf \
  tmux \
  htop \
  nvme-cli \
  libgbm1 \
  libssl-dev \
  libleveldb-dev \
  tar \
  clang \
  bsdmainutils \
  ncdu \
  ca-certificates

echo "⬇️ Installing NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
source "$NVM_DIR/nvm.sh"

echo "⬇️ Installing Node.js 18..."
nvm install 18
nvm use 18
nvm alias default 18
source ~/.bashrc

echo "📂 Creating ceremony directory..."
mkdir -p ~/ceremony && cd ~/ceremony

echo "⬇️ Installing ceremony CLI..."
npm install -g @p0tion/phase2cli

echo "🔑 Authenticating with GitHub..."
phase2cli auth

echo "✅ After you paste the GitHub device code in your browser and approve it,"
echo "   we’ll start the contribution in a screen session."

read -p "👉 Press ENTER once authentication is complete..."

echo "🎬 Starting contribution inside a screen session..."
screen -S contribute bash -c "phase2cli contribute"
