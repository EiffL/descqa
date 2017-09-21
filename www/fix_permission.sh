#!/bin/bash
set -e

python -m py_compile utils/*.py descqa/*.py

mkdir -p cache
chmod o+rx   ../www
chmod o+rx   ..
chmod o+r    ../index.html
chmod o+r    config .htaccess
chmod o+rx   *.cgi
chmod o+rx   style utils viewer descqa descqa/templates
chmod o+rwx  cache
chmod o+r    viewer/*
chmod o+rx   viewer/*.cgi
chmod o+r    style/*
chmod o+r    utils/*
chmod -R o+r descqa/*
chmod o+r    ../config_*.py
ln -sf ../config_*.py ./
