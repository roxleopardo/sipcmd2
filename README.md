<html>
<body>
<h2>Queue Watcher - simple SIP command line softphone to hold 3CX queues</h2>
<h3>Introduction</h3>
<h3>Install</h3>
<h4>Dependencies</h4>
<p>
<h5>Docker</h5>
<br>
Check if your <code>/etc/apt/sources.list</code> contains default debian repo:
<pre>
deb http://deb.debian.org/debian buster main contrib non-free
deb-src http://deb.debian.org/debian buster main contrib non-free
deb http://deb.debian.org/debian buster-updates main contrib non-free
deb-src http://deb.debian.org/debian buster-updates main contrib non-free
deb http://deb.debian.org/debian buster-backports main contrib non-free
deb-src http://deb.debian.org/debian buster-backports main contrib non-free
deb http://security.debian.org/debian-security/ buster/updates main contrib non-free
deb-src http://security.debian.org/debian-security/ buster/updates main contrib non-free
</pre>
<br>
 Run <code>apt update</code> to update repo
<br>
<br>
 Then install the following dependencies
<br>
<pre>
sudo apt-get install ca-certificates curl gnupg lsb-release git -y
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
<br>
<br>
 Enable Docker services to start with SO
<pre>
systemctl enable containerd
systemctl enable docker
systemctl restart containerd
systemctl restart docker
</pre>
<br>
 Clone this repository <code>git clone -b queue-watcher https://github.com/roxleopardo/sipcmd2.git</code>
<br>
<br>
 Open <code>sipcmd2/docker</code> folder
<br>
<br>
 Edit <code>Dockerfile</code> ajusting extenssion connection.
<br>
<br>
 Run <code>chmod +x run.sh</code> and then install using <code>./run.sh</code>
</body>
</html>
