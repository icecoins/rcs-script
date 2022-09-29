#!/bin/bash
#######color code########
red='\e[91m'
green='\e[92m'
yellow='\e[93m'
magenta='\e[95m'
cyan='\e[96m'
none='\e[0m'
url1='https://rbc.i64.cc/'
url2='https://rbc.azir.cc/'
_red() { echo -e ${red}$*${none}; }
_green() { echo -e ${green}$*${none}; }
_yellow() { echo -e ${yellow}$*${none}; }
_magenta() { echo -e ${magenta}$*${none}; }
_cyan() { echo -e ${cyan}$*${none}; }
getpkg(){
case $1 in
0)
read -p "选择下载节点1或2(下载失败时更换节点)"  -n 1 num
if [ ${num} = "1" ];then
wget ${url1}rbc/rbc.tar.gz
else
wget ${url2}rbc/rbc.tar.gz
fi
tar -zxvf rbc.tar.gz   
rm rbc.tar.gz
;;
1)
read -p "选择下载节点1或2(下载失败时更换节点)"  -n 1 num
if [ ${num} = "1" ];then
wget ${url1}rbc/Easy.tar.gz
else
wget ${url2}rbc/Easy.tar.gz
fi
tar -zxvf Easy.tar.gz
rm Easy.tar.gz
;;
2)
read -p "选择下载节点1或2(下载失败时更换节点)"  -n 1 num
if [ ${num} = "1" ];then
wget ${url1}rbc/Normal.tar.gz
else
wget ${url2}rbc/Normal.tar.gz
fi
tar -zxvf Normal.tar.gz
rm Normal.tar.gz
;;
3)
read -p "选择下载节点1或2(下载失败时更换节点)"  -n 1 num
if [ ${num} = "1" ];then
wget ${url1}rbc/Hard.tar.gz
else
wget ${url2}rbc/Hard.tar.gz
fi
tar -zxvf Hard.tar.gz
rm Hard.tar.gz
;;
4)
read -p "选择下载节点1或2(下载失败时更换节点)"  -n 1 num
if [ ${num} = "1" ];then
wget ${url1}rbc/uva_base_v13.2.tar.gz
else
wget ${url2}rbc/uva_base_v13.2.tar.gz
fi
tar -zxvf uva_base_v13.2.tar.gz
rm uva_base_v13.2.tar.gz
;;
esac
}
checkTeam(){
if [  -d Easy ];then
echo -e ""
read -p "$(echo -e "$green~~~当前目录下不存在球队Easy，是否从服务器获取球队（4.83MB）？Y/N~~~~~$none\n"):" getTeam
case $getTeam in
[yY][eE][sS]|[yY])
echo -e "$green~~~下载ing~~~~~$none\n"
getpkg 1
;;
[nN][oO]|[nN])
echo -e "$red给你都不要？给爷爪巴$none\n"	       	
;;
*)
echo -e "$yellow选都能选歪来？...$none\n"
;;
esac
fi
if [[ ! -d Normal ]];then
echo -e ""
read -p "$(echo -e "$green~~~当前目录下不存在球队Normal，是否从服务器获取球队（4.83MB）？Y/N~~~~~$none\n"):" getTeam
case $getTeam in
[yY][eE][sS]|[yY])
echo -e "$green~~~下载ing~~~~~$none\n"
getpkg 2
;;
[nN][oO]|[nN])
echo -e "$red给你都不要？给爷爪巴$none\n"	       	
;;
*)
echo -e "$yellow选都能选歪来？...$none\n"
;;
esac
fi
if [[ ! -d Hard ]];then
echo -e ""
read -p "$(echo -e "$green~~~当前目录下不存在球队Hard，是否从服务器获取球队（1.21MB）？Y/N~~~~~$none\n"):" getTeam
case $getTeam in
[yY][eE][sS]|[yY])
echo -e "$green~~~下载ing~~~~~$none\n"
getpkg 3
;;

[nN][oO]|[nN])
echo -e "$red给你都不要？给爷爪巴$none\n"	       	
;;
*)
echo -e "$yellow选都能选歪来？...$none\n"
;;
esac
fi
if [[ ! -d uva_base_v13.2 ]];then
echo -e ""
read -p "$(echo -e "$green~~~当前目录下不存在球队uva_base_v13.2，是否从服务器获取球队（4.07MB）？Y/N~~~~~$none\n"):" getTeam
case $getTeam in
[yY][eE][sS]|[yY])
echo -e "$green~~~下载ing~~~~~$none\n"
getpkg 4
;;
[nN][oO]|[nN])
echo -e "$red给你都不要？给爷爪巴$none\n"	       	
;;
*)
echo -e "$yellow选都能选歪来？...$none\n"
;;
esac
fi
}
installRc(){
echo -e "$green\n警告：确认安装环境吗(从服务器下载90.84MB，占用300-400MB)？耗时可能长达十分钟至半年$none"
sleep 1s
package=rcssserver
read -p "最后一次确认，是否安装robocup服务环境?（Y|N）:"  -n 1 OK
if [ ${OK} = "y" ] || [ ${OK} = "Y" ];then
echo "$red开始安装……$none\n"
apt install zsh -y
yum install zsh -y
getpkg 0
cd robocup2d_env_install
bash ./install.sh
cd ..
else
echo "$green爪巴~$none\n"
fi
pause
}
show(){
echo -e "$yellow **************************************************************************** $none"
echo -e "$yellow ********           *************      *****************        ************* $none"
echo -e "$yellow ****        ****      ********     *   **************   *****    *********** $none"
echo -e "$yellow **       *********       ****    ***    ***********    ********   ********** $none"
echo -e "$yellow *********************   ************    **********     ********   ********** $none"
echo -e "$yellow *******************   **************    **********    **********   ********* $none"
echo -e "$yellow ******************  ****************    ***********    *********   ********* $none"
echo -e "$yellow *****************  ****************    ***************       **    ********* $none"
echo -e "$yellow **************    *****************    ************************   ********** $none"
echo -e "$yellow ************        ***************    **********************     ********** $none"
echo -e "$yellow ******************    *************   ***********************    *********** $none"	
echo -e "$green ********************    ***********   ***********************   ************ $none"
echo -e "$green ********************     **********   **********************   ************* $none"
echo -e "$green *****    *********    *************    ********************   ************** $none"
echo -e "$green *******   ***       ***************    *******************   *************** $none"
echo -e "$green ********           *************         ***************    **************** $none"
echo -e "$green **************************************************************************** $none"
echo -e "$yellow ***************------------2020.9.18-------------*************************** $none"
echo -e "$yellow ***************    COPYRIGHT(C) 2020 @德明老哥    *************************** $none" 
echo -e "$red **************---------------------------------------************************* $none"
echo -e "$red **************************************************************************** $none"
echo -e "$red **************     ***************     *************      ****************** $none"
echo -e "$red ***************      ***************     **************      *************** $none"
echo -e "$red ****************       ****************     **************      ************ $none"
echo -e "$red ******************        **************       **************     ********** $none"
echo -e "$red *******************        ***************       **********     ************ $none"
echo -e "$red ******************        ***************      **********     ************** $none"
echo -e "$red ****************       ***************      ***********     **************** $none"
echo -e "$green **************************************************************************** $none"
}
teams=(
uva_base_v13.2
Easy
Normal
Hard
)
pause() {
read -rsp "$(echo -e "按$green Enter 回车键 $none继续....或按$red Ctrl + C $none取消.")" -d $'\n'
echo
}
error() {
echo -e "$red输入错误！$none"
pause
}
addTeam(){
case $1 in
1)
cd uva_base_v13.2
./start.sh &
cd ..
break
;;
2)
cd Easy
./start.sh &
cd ..
break
;;
3)
cd Normal
./start.sh &
cd ..
break
;;
4)
cd Hard
./start.sh &
cd ..
break
;;
esac	
echo -e "$red 完成!$none\n"
sleep 1s 	
}
choose(){
chmod 777 Easy Normal Hard uva_base_v13.2
echo -e "$green请在确保当前文件夹包含球队文件夹的情况下使用当前脚本！ $none\n"
echo -e "$yellow若选择的球队不存在相应文件夹将无法正常置入球队！ $none\n"
echo -e "$red注意！当前uva_base_v13.2球队并不可用,在未替换新文件夹之前$none\n"
echo -e "$green~~~请使用其他球队~~~~~$none\n"
echo -e "$red我说真的别乱试啊真启动不了啊哥$none\n"
for ((i = 1; i <= ${#teams[*]}; i++)); do
team="${teams[$i - 1]}"
echo
echo -e "$yellow $i. $none${team}"
done
read -p "$(echo -e "\n选择球队1"):" team1
while :; do
if((team1>0))&&((team1<5));then
break
else
error
echo -e "$red不会吧不会吧？不会真有人选 "$team1" 吧？$none"
read -p "$(echo -e "爪巴，重选"):" team1
fi
done
read -p "$(echo -e "\n选择球队2"):" team2
while :; do
if((team2>0))&&((team2<5));then
break
else
error
echo -e "$red不会吧不会吧？不会真有人选 "$team2" 吧？$none"
read -p "$(echo -e "爪巴，重选"):" team2
fi
done	
rcssserver & 
sleep 1s
soccerwindow2 & sleep 1s
addTeam $team1 & addTeam $team2 &
sleep 1s
echo -e "$green\n种水稻ing~$none\n"
echo -e "$green\n催熟ing~$none\n"
echo -e "$green\n算了直接种胃里$none\n"
echo -e "$green下饭!$none\n"
sleep 5s
}
while :; do
show
sleep 1s
echo -e "$green\n备注：本脚本由南319宿舍进行第一次编写$none"
echo -e "$yellow\n备注：再次调用脚本在当前目录下执行命令 bash football.sh 即可，或在其他目录重新wget $none"
echo -e "$red\n备注：请仔细阅读备注后选择功能，但是不管怎么选，都后果自负$none"
echo -e "$yellow\n点菜:\n\t 1.安装环境\n\t（备注：如果已经安装了环境，这个选项将重新安装一次）\n\t 2.获取球队\n\t（备注：从服务器下载球队到当前目录）\n\t 3.芜湖起飞\n\t（备注：开始选择球队并启动服务）\n\t 4.直接爪巴\n\t（exit 1）$none"
read -p "$(echo -e "选择： [${magenta}1-4$none]:")" choice1
case $choice1 in
1)
installRc
;;
2)
checkTeam
;;
3)
choose
;;
4)
exit 1
;;
*)
echo -e "$yellowQ都会Q歪来？爪巴$none"
error
;;
esac
done
exit 0