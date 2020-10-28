#!/bin/bash

# 深度清理

# node
find . -name "node_modules" -type d -mtime +120 | xargs rm -rf

# php
find . -name "vendor" -type d -mtime +120 | xargs rm -rf