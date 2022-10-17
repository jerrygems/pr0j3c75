#!/bin/bash

echo """
___  ___  _  _       ___ ____ ____ _    ____       _ _  _ ____ ___ ____ _    _    ____ ____
|__] |__] |__|        |  |  | |  | |    [__        | |\ | [__   |  |__| |    |    |___ |__/
|__] |__] |  |        |  |__| |__| |___ ___]       | | \| ___]  |  |  | |___ |___ |___ |  \\

"""

echo "[SCRIPT IS INITIALIZED]: tools shown below can be installed using this script"
echo ""
Array=( "aquatone" "massdns" "scanners-box" "Osmedeus" "findsploit" "EyeWitness" "RaceTheWeb" "gitallsecrets" "SSRFdetector" "knockpy" "turbolist3r" "XSShunter" "XSStrike" "XXEinjector" "CORStest" "arjun" "assetfinder" "exploit-db" "seclists" "Sn1per" "Tidos-framework" "fimap" "scrapy-web" "amass" "getallurls" "subfinder" "sublist3r" "XSStrike" "dirbuster" "xsrfprobe" "httprobe" "wapiti" "steghide" "stegsolve" "sqlmap" "ironWASP" "INalyzer" "netsparker" "w3af" "arachni" "SecApps" "WebReaver" "wpscan" "zoom" "joomscan" "cms-explorer" "sqlmate" )

bullet=1
for i in "${Array[@]}"
do
	
	echo $bullet"->" "$i"
	bullet=$(($bullet+1))
	
done|xargs -L4|column -t

echo ""
echo "[INPUT]: select the package you wanna install by entering the number"
read NumOfTool
echo "[SELECTED TOOL IS]" "${Array[$NumOfTool-1]}"

echo "[SETTING UP]: setting up directories for tool installation"



setup(){
	echo "[GETTING]: Aquatone"
	wget https://github.com/michenriksen/aquatone/releases/download/v1.7.0/aquatone_linux_amd64_1.7.0.zip
	unzip aquatone_linux_amd64_1.7.0.zip
	cp aquatone /usr/bin/aquatone
	chmod +x aquatone
	
	echo "[GETTING]: massdns"
	sudo apt install massdns

	echo "[GETTING]: "
}


if [ -d ~/BBH-TOOLS-INSTALLER/Tools ]
then
	echo "[STATUS]: directory ~/BBH-TOOLS-INSTALLER/Tools already exists"
else
	echo "[STATUS]:directory is need to be created"
	echo "[PERMISSIONS]:do you want to create directory(y/n)"
	read PERMtoDIRcreation

	if [ "$PERMtoDIRcreation" = "y" ]
	then
		echo "directory is getting created"
		mkdir ~/BBH-TOOLS-INSTALLER
		cd ~/BBH-TOOLS-INSTALLER
		mkdir ~/BBH-TOOLS-INSTALLER/Tools
		cd ~/BBH-TOOLS-INSTALLER/Tools
		if [ -d ~/BBH-TOOLS-INSTALLER/Tools ]
		then
			echo "[STATUS]:directories are created"
			setup
		fi

	else
		echo "error in directory creation"
	fi
fi
