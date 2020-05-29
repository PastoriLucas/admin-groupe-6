server {
	listen 80;
	listen [::]:80;

	server_name wt2-6.ephec-ti.be www.wt2-6.ephec-ti.be;
	
	charset utf-8;

	root /var/www/html;
	index index.html;

	location / {
		try_files $uri $uri/ =404;
	}
}