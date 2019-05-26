#!/bin/sh
robot -d results3  ../TestSuites/TestSuite3.robot
firefox results3/log.html
firefox results3/report.html
