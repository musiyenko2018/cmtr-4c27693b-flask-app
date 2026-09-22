#!/bin/bash
if [ -f /home/ec2-user/app/app.pid ]; then
    PID=$(cat /home/ec2-user/app/app.pid)
    kill -9 $PID || true
    rm -f /home/ec2-user/app/app.pid
fi