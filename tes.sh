#!/bin/bash
gcloud auth activate-service-account --key-file llave.json
rm -f -v llave.json
rm -f -v api_key.py
rm -f -v credentials.tar.gz
rm -f -v credentials.tar.gz.enc
gcloud config set project hopeful-vim-285617
gcloud -q --verbosity=info app deploy --no-promote