#!/bin/bash

killall mbsync &>/dev/null
mbsync -a -q
