<html>
<body>
<h2>Queue Watcher - simple SIP command line softphone to hold 3CX queues</h2>
<h3>Introduction</h3>
<h3>Install</h3>
<h4>Dependencies</h4>
<p>
<h5>Docker</h5>
<pre>
sudo apt-get install ca-certificates curl gnupg lsb-release -y
sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
</pre>
<br>
  Ajust <code>/etc/nftables.conf</code> using the file present on this repository
<br>
<br>
  Reload nftables config using <code>systemctl reload nftables.service</code>
<br>
<br>
  Check if rules worked using <code>/sbin/nft list ruleset</code>
<br>
<br>
  Ajust <code>/etc/docker/daemon.json</code> using the file present on this repository
<pre>
systemctl enable containerd
systemctl enable docker
systemctl restart containerd
systemctl restart docker
</pre>
</body>
</html>
