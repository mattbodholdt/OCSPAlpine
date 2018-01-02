#!/bin/sh
if [ -z "$PORT" }; then
	echo "No port defined"
else
	openssl ocsp -sha256 -index /data/index.txt -CA /data/rsa_ca_chain.pem -rkey /data/ocsp_rsa.pem -rsigner /data/rsa_ocsp_cert.pem -ignore_err -timeout 120 -port 0.0.0.0:$PORT
fi
