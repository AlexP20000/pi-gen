# Remove keyboard layout
rm /etc/default/keyboard
# insert custom keyboard layout (for french keyboards)
echo "XKBMODEL='c105'" > /etc/default/keyboard
echo "XKBLAYOUT='fr'" >> /etc/default/keyboard
echo "XKBVARIANT='azerty'" >> /etc/default/keyboard
echo "XKBOPTIONS=''" >> /etc/default/keyboard
echo "BACKSPACE='guess'" >> /etc/default/keyboard


# Add Grafana repo
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
# Add the Grafana APT repository
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
