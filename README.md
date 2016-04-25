# Collections Manager UI Image

Image of the DINA Collections Manager UI.

# Certificates and setting up SSL

You may have three files available:

		key.pem - your secret key originally used in your Certificate Signing Request
		cacert.pem - the Certificate Authority's chain of certs
		cert.pem - your signed (wildcard?) public cert

If so, then combine the last two files - the cacert.pem och cert.pem - into `combined.pem`.

The Makefile uses the `combined.pem` and the  `key.pem` to configure the nginx webserver (see `ui.conf` for details).