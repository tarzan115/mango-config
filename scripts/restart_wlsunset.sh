#!/usr/bin/bash

set +e

pkill wlsunset
nohup wlsunset -T 3501 -t 3500 >/dev/null 2>&1 &