#!/bin/bash
echo "<h1>Hello World</h1>" > index.html 
nohup busybox httpd -f -p ${web_port} &