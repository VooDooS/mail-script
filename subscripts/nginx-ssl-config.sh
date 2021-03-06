# We update nginx configuration for allowing only ssl connections :
mkdir /etc/nginx/includes
cp prebaked/nginx-ssl.conf /etc/nginx/includes/ssl.conf
cp prebaked/info-site-ssl /etc/nginx/sites-available/info-site

sed -i.bak "s/KEYHERE/nginx-${DOMAIN}.pem/" /etc/nginx/sites-available/info-site
sed -i.bak "s/CERTHERE/nginx-${DOMAIN}.pem/" /etc/nginx/sites-available/info-site
sed -i.bak "s/SERVNAMEHERE/${DOMAIN}/" /etc/nginx/sites-available/info-site

sudo service nginx restart
