# Add Grafana repo
wget -q -O - https://packages.grafana.com/gpg.key | sudo apt-key add -
# Add the Grafana APT repository:
echo "deb https://packages.grafana.com/oss/deb stable main" | sudo tee -a /etc/apt/sources.list.d/grafana.list
