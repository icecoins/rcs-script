#!/bin/bash#######color code########red='\e[91m'green='\e[92m'yellow='\e[93m'magenta='\e[95m'cyan='\e[96m'none='\e[0m'url1='https://rbc.i64.cc/'url2='https://rbc.azir.cc/'_red() { echo -e ${red}$*${none}; }_green() { echo -e ${green}$*${none}; }_yellow() { echo -e ${yellow}$*${none}; }_magenta() { echo -e ${magenta}$*${none}; }_cyan() { echo -e ${cyan}$*${none}; }getpkg(){case $1 in0)read -p "选择下载节点1或2(下载失败时更换节点)"  -n 1 numif [ ${num} = "1" ];thenwget ${url1}rbc/rbc.tar.gzelsewget ${url2}rbc/rbc.tar.gzfitar -zxvf rbc.tar.gz   rm rbc.tar.gz;;1)read -p "选择下载节点1或2(下载失败时更换节点)"  -n 1 numif [ ${num} = "1" ];thenwget ${url1}rbc/Easy.tar.gzelsewget ${url2}rbc/Easy.tar.gzfitar -zxvf Easy.tar.gzrm Easy.tar.gz;;2)read -p "选择下载节点1或2(下载失败时更换节点)"  -n 1 numif [ ${num} = "1" ];thenwget ${url1}rbc/Normal.tar.gzelsewget ${url2}rbc/Normal.tar.gzfitar -zxvf Normal.tar.gzrm Normal.tar.gz;;3)read -p "选择下载节点1或2(下载失败时更换节点)"  -n 1 numif [ ${num} = "1" ];thenwget ${url1}rbc/Hard.tar.gzelsewget ${url2}rbc/Hard.t