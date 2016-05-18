#!/usr/bin/env bash

cd ~;
sudo yum -y groupinstall basic-desktop desktop-platform x11 fonts;
sudo yum -y  install java-1.8.0-openjdk-devel;
echo "JAVA8_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.91-0.b14.el6_7.x86_64;" >> /home/vagrant/.bashrc;
echo "PATH=${JAVA8_HOME}/bin:${PATH};" >> /home/vagrant/.bashrc;
echo "JAVA7_HOME is set to:" $JAVA7_HOME;
echo "Installing Maven 3.2.5";
wget  http://mirror.cc.columbia.edu/pub/software/apache/maven/maven-3/3.2.5/binaries/apache-maven-3.2.5-bin.tar.gz &&
sudo tar xzf apache-maven-3.2.5-bin.tar.gz -C /usr/local &&
cd /usr/local &&
sudo ln -s apache-maven-3.2.5 maven;
echo "export M2_HOME=/usr/local/maven;" >> /home/vagrant/.bashrc;
echo "export PATH=${M2_HOME}/bin:${PATH};" >> /home/vagrant/.bashrc;
echo "Installing IntellJ 12.0.4";
sudo yum -y install mysql-server;
sudo /sbin/service mysqld start;
sudo yum -y install git;
wget -O /tmp/intellij.tar.gz http://download.jetbrains.com/idea/ideaIC-12.0.4.tar.gz &&
cp /tmp/intellij.tar.gz ~/ &&
tar xfz ~/intellij.tar.gz &&
cd idea-IC-123.169/bin &&
./idea.sh;
cd ~/;

