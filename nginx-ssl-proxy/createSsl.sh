#!/bin/bash

openssl req -newkey rsa:2048 -config openssl.conf -nodes -keyout ./nginx/ssl/certificate.key -x509 -days 365 -out ./nginx/ssl/certificate.crt

