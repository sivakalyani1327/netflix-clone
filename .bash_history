sudo vi jenkins.sh
sudo chmod 777 jenkins.sh
jenkins -version
sudo vi jenkins.sh
jenkins -version
sudo update-alternatives --config java
sudo apt update
sudo apt install openjdk-17-jdk -y
java -version
sudo systemctl status jenkins -l
sudo journalctl -u jenkins -xe
sudo cat /var/log/jenkins/jenkins.log
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee   /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]   https://pkg.jenkins.io/debian-stable binary/ | sudo tee   /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins -y
java -version
sudo systemctl start jenkins
sudo systemctl status jenkins -l
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
sudo apt-get update
sudo apt-get install docker.io -y
sudo usermod -aG docker $USER #my case is ubuntu
newgrp docker
sudo chmod 777 /var/run/docker.sock
docker run -d --name sonar -p 9000:9000 sonarqube:lts-community
docker -ps
docker ps
vi trivy.sh
