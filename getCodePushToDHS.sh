#!/bin/bash
git pull origin master
gradle mlLoadModules -Penvironment=local
