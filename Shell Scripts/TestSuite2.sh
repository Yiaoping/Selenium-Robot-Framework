#!/bin/sh
robot -d results2 ../TestSuites/TestSuite2.robot
firefox results2/log.html
firefox results2/report.html
