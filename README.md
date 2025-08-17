# EthStorage V1 Trusted Setup Ceremony



> **EthStorage** is a modular and decentralized storage Layer 2 that offers programmable key-value storage powered by DA. It enables long-term DA solutions for Rollups and opens up new possibilities for fully on-chain applications like games, social networks, AI, etc.

![EthStorage Banner](https://github.com/user-attachments/assets/20f5f5d8-5b69-40ba-85fe-e0e20223a04a)

## 🎯 About This Ceremony

This ceremony is conducted for **Groth16 zk-SNARK circuits**, which are integral to EthStorage's proof-of-storage algorithm. 

> **Every participant makes the network stronger; your contribution helps safeguard the transparency, decentralization, and long-term security of EthStorage for the entire community.**

This repository helps you join the **EthStorage Trusted Setup Ceremony** easily. You can either run everything automatically with one command or do it step by step if you prefer to see what's happening.

## 📋 Prerequisites

### System Requirements
- **OS**: Linux-based (Ubuntu 20.04/22.04, Debian 11/12 recommended)
- **RAM**: Minimum 2 GB
- **Storage**: Minimum 5–10 GB free disk space
- **Windows/macOS**: Requires WSL2 (Ubuntu)

### GitHub Account Requirements
Your GitHub account must meet the following criteria:
- ✅ At least 1 month old
- ✅ At least 1 public repository
- ✅ Follow at least 5 GitHub accounts
- ✅ Have at least 1 follower

## 🚀 Quick Start – One Command Magic

If you just want to get started quickly, run this in your terminal:

```bash
bash <(curl -s https://raw.githubusercontent.com/0xNexar/Ethstorage-Trusted-Setup-Ceremony/main/run.sh)
```

### What Next:
1. Open [https://github.com/login/device](https://github.com/login/device) and paste the code provided by the CLI
2. Select **"ETHstorage V1 Trusted Setup Ceremony"** and hit Enter
3. Choose **"randomly"** for entropy generation and hit Enter

![Ceremony Selection](https://github.com/user-attachments/assets/18498457-aeeb-4aa4-b2ca-dcbf993aa999)

### What the Script Does:
- 🔄 Updates your system & installs all needed packages
- 📦 Sets up Node.js 18 via NVM
- 🛠️ Installs the Ceremony CLI (phase2cli)
- 🔐 Guides you through GitHub authentication
- 🖥️ Starts your contribution inside a screen session (safe to close SSH client)

> **💡 Tip**: After authentication, you'll see your session in screen as `contribute`. To check on it later:
> ```bash
> screen -r contribute
> ```

## 📝 Manual Step-by-Step Setup

If you prefer to do things manually, here's the detailed process:

### 1. Update Your System
```bash
sudo apt update && sudo apt upgrade -y
```

### 2. Install Dependencies
```bash
sudo apt install -y build-essential curl wget git unzip pkg-config \
software-properties-common screen iptables lz4 jq make gcc nano \
automake autoconf tmux htop nvme-cli libgbm1 libssl-dev libleveldb-dev \
tar clang bsdmainutils ncdu ca-certificates
```

### 3. Install NVM & Node.js 18
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
export NVM_DIR="$HOME/.nvm"
source "$NVM_DIR/nvm.sh"

nvm install 18
nvm use 18
nvm alias default 18
source ~/.bashrc
```

### 4. Create Ceremony Directory
```bash
mkdir -p ~/ceremony && cd ~/ceremony
```

### 5. Install Ceremony CLI
```bash
npm install -g @p0tion/phase2cli
```

### 6. Authenticate with GitHub
```bash
phase2cli auth
```

### 7. Complete GitHub Authentication
- Open: [https://github.com/login/device](https://github.com/login/device)
- Paste the code provided by the CLI

### 8. Start Contribution in Screen
```bash
screen -S contribute
phase2cli contribute
```

**When prompted:**
- Select **"ETHstorage V1 Trusted Setup Ceremony"** and hit Enter
- Choose **"randomly"** for entropy generation and hit Enter

**Screen Commands:**
- Detach: `Ctrl+A` then `D`
- Reattach: `screen -r contribute`

## 💡 Tips & Notes

- 🎯 The one-command method is easiest and handles everything automatically
- 🖥️ `screen` keeps your contribution running even if your SSH disconnects
- 🔐 Make sure your GitHub account is ready to approve the device login
- ⏱️ The contribution process might take a while depending on queue length
- 🔄 If connection is lost, just run the same command again - it will resume where it left off
- 🎉 Once complete, you'll be invited to share your achievement on X!

## 🧹 Cleanup & Logout

For security, it's recommended to clean up after your contribution:

```bash
phase2cli clean
phase2cli logout
```

Remove the ceremony folder if you don't need it anymore:

```bash
rm -rf ~/ceremony
```

This keeps your system tidy and your GitHub account safe. 🔒

## 🤝 

Please feel free to submit issues and pull requests.


---

**Made with ❤️ for the EthStorage community**

