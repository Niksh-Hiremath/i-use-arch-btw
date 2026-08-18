#!/bin/bash

util=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits)
echo "{\"text\": \"󰟽 ${util}%\"}"
