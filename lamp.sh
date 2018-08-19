#I assume that you already installed apache2 and configurated

#check the config
sudo apache2ctl configtest

#if you get an error about domain name 

#you should add 'ServerName' variable in apache2.conf  
sudo nano /etc/apache2.conf
#Inside, at the bottom of the file, add a ServerName directive, pointing to your primary domain name. If you do not have a domain name associated with your server, you can use your server's public IP address
#check again
sudo apache2ctl configtest


#if you did not get an error,restart apache2
sudo systemctl restart apache2

#list the firewall allowed
sudo ufw app list

#check the ports 80,443 open for apache
sudo ufw app info "Apache Full" 

#allow incoming trafic for apache
sudo ufw allow in "Apache Full"

#check apache working properly by looking http://your_server_IP_address

#Here it comes the MySQL installation
sudo apt-get install mysql-server #create password while installation

#Validation of security of password and other settings
mysql_secure_installation
#follow the instructions of program,maybe update password 

#PHP
sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql

# set the file priority by adding index.php before index.html
sudo nano /etc/apache2/mods-enabled/dir.conf 

#restart apache for activate config
sudo systemctl restart apache2
#check apache works properly
sudo systemctl status apache2

#configuration done,now you can test it by typing path of your php file on
#your browser

