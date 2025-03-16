;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	ns1.coughlinfam.com admin.coughlinfam.com. (
			      2		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
; name servers - NS records
@    IN      NS      ns1.coughlinfam.com.

; name servers - A records
ns1          IN      A       192.168.3.116

; 192.168.0.0/16  - A records
pack442		IN	CNAME	pack442-isolated.coughlinfam.com.
pack442-isolated	IN	A	192.168.7.156
