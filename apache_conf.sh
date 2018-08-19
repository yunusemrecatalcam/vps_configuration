#install apache
sudo apt-get update
sudo apt-get install apache2
#after installation check it by typing your ip to your browsers address bar

#create a directory for virtual host
sudo mkdir /var/www/yoursite.com/public_html

#change ownership of directory recursively,for all files
sudo chown -R $USER:$USER /var/www/yoursite/public_html

#update permissions for directory
sudo chmod -R 755 /var/www/yoursite/public_html

#create a .conf file
cd /etc/apache2/sites-available
sudo cp 000-default.conf yoursite.conf

#BE CARE, you should set up your conf file now

#After setting up .conf file enable your config
sudo a2ensite yoursite.conf
sudo service apache2 reload

#for disabling default config
sudo a2dissite 000-default.conf
sudo service apache2 reload
