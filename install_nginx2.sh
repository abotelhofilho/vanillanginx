apt-get update
apt-get install -y nginx
touch /var/www/html/index.html

hostname=$(hostname)
cloudname="AZURE"

cat <<EOF > /var/www/html/index.html 
  <!DOCTYPE html>
  <head>
  <meta>
  <style>
  img {
    display: block;
    margin-left: auto;
    margin-right: auto;
  }
  body {
  text-align: center;
  
  }
  </style>
  </head>
  <html>
  <body>
  <h1>$cloudname</h2>
  <p><em>This Web Page is running on $cloudname</em></p>
  <p><em>The server name is $hostname</em></p> 

  <img  src="https://cloudacademy.com/wp-content/uploads/2017/03/azure-apps.png" alt="$cloudname"> 
  <h2> Web Applicaiton Architecture on $cloudname </h2>
  <img  src="https://cloudhacks-public-html-file.s3.amazonaws.com/images/tf_azure.jpeg" alt="$cloudname Architecture"> 

  </body>
  </html>

EOF
