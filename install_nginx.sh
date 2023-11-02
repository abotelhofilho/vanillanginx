apt-get update
apt-get install -y nginx
echo $(hostname) | sudo tee /var/www/html/index.html
echo "<br>" | sudo tee -a /var/www/html/index.html
echo "<img src="https://azure.microsoft.com/en-us/blog/wp-content/uploads/2021/05/95baa365-fedb-4d3c-8b1f-22735e3bb77a.webp">" | sudo tee -a /var/www/html/index.html
echo "<br>" | sudo tee -a /var/www/html/index.html
