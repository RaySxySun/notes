#! /usr/bin/env python
# -*- coding: utf-8 -*-

import re
import os
import sys
import csv

if len(sys.argv) < 2:
    print("Usage: creatPoi.py [input file]")
    exit(1)

open('poi.txt', 'w').close()
f = open('poi.txt', 'w')

with open(sys.argv[1]) as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    line_count = 0
    pLable = re.compile(':.*"([^"]*)"')
    pPosition = re.compile('\((.*)\)')
    for row in csv_reader:
        found = pLable.search(row[2])
        if not found:
            continue
        label = found.group(1)

        found = pPosition.search(row[6])
        if not found:
            continue
        position = found.group(1)
        text = 'I,,"{""en"":""%(label)s"",""cn"":""%(label)s""}","{""en"":""%(label)s"",""cn"":""%(label)s""}","{""en"":""%(label)s"",""cn"":""%(label)s""}",circle,POINT(%(position)s),,,POINT(%(position)s),2000,point,point,"{""image"":""imglink"",""href"":""https://www.abcd.com/sites/default/files/styles/410x260/public/2018/05/ceo_letter_carousel_0511_0.png""}",suqin.gu,suqin,40288248629e28fc0162a4b7b8f60020,"4028824862a849770162a94cfa620000",1,ACTIVE,' % {"label":label, "position":position}  
        #print >> f, text
        print(text, file=f)
    f.close()
