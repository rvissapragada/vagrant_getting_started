clear
echo "add a Centos 6.7 box to vagrant";
vagrant init bento/centos-6.7;
vagrant box add bento/centos-6.7 --provider virtualbox; 
vagrant box list;
vagrant up --provider virtualbox;
# stop machine
# vagrant halt;
echo "Done";
