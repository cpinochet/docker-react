#!/bin/sh
gcloud auth activate-service-account --key-file llave.json
gcloud config set project hopeful-vim-285617
gcloud -q app deploy app.yaml --no-promote