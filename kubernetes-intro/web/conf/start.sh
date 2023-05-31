#!/bin/sh

ls /app/ | grep -v '*.sh' > /app/homework.html

nginx -g "daemon off;"