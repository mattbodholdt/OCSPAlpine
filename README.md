# OCSPAlpine
Alpine container with OpenSSL to run OCSP Responder

Place required files in /var/containerdata/ocsp on the Docker host:

-CA Index - index.txt

-CA Chain File - ca_chain.pem

-OCSP Signing Cert Key - ocsp_key.pem

-OCSP Signing Cert - ocsp_cert.pem

When running, specifiy the port for the host:container, the environment variable PORT value (this and container port should match), and map the volume which contains the required files.

docker run -dt --name ocspalpine_container -p 8822:8822 -e PORT=8822 -v /var/containerdata/ocsp/:/data mattbodholdt/ocspalpine

Note that OpenSSL as an OCSP Responder can only handle POST requests.
