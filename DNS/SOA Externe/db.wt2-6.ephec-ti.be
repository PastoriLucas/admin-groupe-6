;
; BIND data file for local loopback interface
;
$TTL    604800
@       IN      SOA     ns.wt2-6.ephec-ti.be. admin.wt2-6.ephec-ti.be. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
;

; Name servers
wt2-6.ephec-ti.be.      IN      NS      ns.wt2-6.ephec-ti.be.

; A records
ns      IN      A       51.178.41.204

; Other A records
@       IN      A       51.178.41.204
www     IN      A       51.178.41.204
b2b     IN      A       51.178.41.204