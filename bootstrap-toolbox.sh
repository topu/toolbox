#!/usr/bin/env bash
set -eo pipefail # Exit on error
set -o nounset   # Unset variable/parameter is an error

apt-get update
apt-get upgrade -y
apt-get install -y zsh zsh-syntax-highlighting dnsutils ldnsutils strace ngrep htop git dstat net-tools iproute2 socat curl wget tcpdump
rm -rf /var/lib/apt

wget -O /root/.zshrc http://git.grml.org/f/grml-etc-core/etc/zsh/zshrc
cat >>/root/.zshrc <<EOF
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
EOF

mkdir -p /root/.config/htop/
cat >>/root/.config/htop/htoprc <<EOF
hide_threads=0
detailed_cpu_time=1
EOF