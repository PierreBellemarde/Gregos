#!/bin/sh
echo "Installation de GregOS (V1) en cours..."

adduser -D greg
echo "greg:greg" | chpasswd
setup-keymap fr

apk update
apk add doas bash wordgrinder focuswriter zathura rsync

addgroup greg wheel
echo "permit persist greg" > /etc/doas.d/doas.conf

mkdir -p /home/greg/Documents
chown -R greg:greg /home/greg

echo "Installation terminée. Connecte-toi avec l'utilisateur 'greg' (mot de passe : greg)."
