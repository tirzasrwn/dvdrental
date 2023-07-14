#!/bin/sh

/usr/local/bin/pg_restore -U postgres -d dvdrental /tmp/dvdrental.tar
