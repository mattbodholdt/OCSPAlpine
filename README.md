# OCSPAlpine
Alpine container with SSL to run OCSP Responder

Place required files in /var/containerdata/ocsp:

-CA Index - index.txt

-CA Chain File - ca_chain.pem

-OCSP Signing Cert Key - ocsp_key.pem

-OCSP Signing Cert - ocsp_cert.pem

docker run -dt --name ocspalpine_container -p 8822:8822 -e PORT=8822 -v /var/containerdata/ocsp/:/data mattbodholdt/ocspalpine

Note that OpenSSL as an OCSP Responder can only handle POST requests.
