#!/bin/bash
gcloud auth activate-service-account --key-file llave.json
gcloud config set project hopeful-vim-285617
gcloud -q --verbosity=info app deploy --no-promote