# Some simple settings for AWS EC2 dev machines. 
#FUTURE think about using ansible, puppet and improved devops strategies

sudo yum update -y
sudo yum install tmux git -y
sudo yum install docker -y
sudo usermod -a -G docker ec2-user
sudo chkconfig docker
sudo service docker start
curl -L https://github.com/docker/compose/releases/download/1.11.1/docker-compose-`uname -s`-`uname -m` >  /tmp/docker-compose
sudo mv /tmp/docker-compose /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

