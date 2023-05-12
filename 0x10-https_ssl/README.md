Task 0 - World wide web
To configure the domain zone so that the subdomain www points to a load-balancer IP (lb-01) while adding other subdomains (such as  lb-01, web-01 and web-02) and also write a Bash script that will display information about subdomains.
Task 1. HAproxy SSL termination
To install HAproxy 1.5 and create a certificate using certbot and also configure the HAproxy to accept encrypted traffic for my subdomain www..
The HAproxy must listen on port TCP 443, accept SSL traffic, serve encrypted traffic that will return the / of your web server.  This page should return Holberton School when querying the root of my domain name.
Task 2 - No loophole in your website traffic
To configure HAproxy to automatically redirect HTTP traffic to HTTPS. HAproxy should be transparent to the user, return a 301 and redirect HTTP traffic to HTTPS
