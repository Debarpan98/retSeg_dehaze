#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Nov  3 13:54:49 2020

@author: ddas
"""

import os
from DCP_dehaze import dehaze

#directory for storing the dehazed images
dest_img_dir = './training/dehazed_imgs'
if not os.path.isdir(dest_img_dir):
    os.makedirs(dest_img_dir)
    
#source directory of the RGB images
img_dir = './training/images'
img_names = os.listdir(img_dir)
c = 0
for i in img_names :
    c = c + 1
    x = os.path.join(img_dir, i)
    #print(c)
    dehaze(x, dest_img_dir)