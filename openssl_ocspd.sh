#!/bin/sh
if [ -z "$PORT" }; then
	echo "No port defined"
else
	openssl ocsp -sha256 -index /data/index.txt -CA /data/ca_chain.pem -rkey /data/ocsp_key.pem -rsigner /data/ocsp_cert.pem -ignore_err -timeout 120 -port 0.0.0.0:$PORT
fi
