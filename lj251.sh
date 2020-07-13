#!/bin/bash
#########################################################
#       Sistema Cli para gerenciamento de PDVs          #
#           Desenvolvido por:  Nilsonlinux              #
#########################################################
# Variáveis
## Colors
C='\033[1;36m'
G='\033[1;32m'
R='\033[1;31m'
Y='\033[1;33m'
B='\033[1;34m'
P='\033[1;35m'
RE='\033[0m'
a='\033[1;33m' # Amarelo
p='\033[0;35m' # Purple
v='\033[0;32m' #Verde
b='\033[1m'
u='\033[4m'
bl='\E[30m'
r='\E[31m'
g='\E[32m'
y='\E[33m'
bu='\E[34m'
m='\E[35m'
c='\E[36m'
w='\E[37m'
endc='\E[0m'
enda='\033[0m'
version='20200408'
spath="$( cd "$( dirname $0 )" && pwd )"
############################################################
# clipdvs Logo
logo () {
  clear
  echo -e "${b}${g}                                                                                                     
     ____ _ _ ____  ______     __
    / ___| (_)  _ \|  _ \ \   / /__
   | |   | | | |_) | | | \ \ / / __|  
   | |___| | |  __/| |_| |\ V /\__ \    
    \____|_|_|_|   |____/  \_/ |___/ © 2020${enda}
 ${c}Automação  Facilidade  Rapidez${endc}
        ${r}Dev: Nilsonlinux${endc}"
    echo
}

# Exit Codig
clipdvsexit () {
  logo
  echo && sleep 1
  exit
}
#######################
voltarrpdv () {
  logo 
  echo && sleep 1
  exit
}
#######################
# Reiniciar PDVs ///////////////////////// MENU /////////////////////////////////////////////////
reiniciarpdvs () {
  logo
  echo -e " ${b}[ REINICIAR PDVs ]${enda}"
  echo -e "${b}Comando a ser executado${enda} : ${r}reboot${enda}"
  echo -e " ${b}[${enda} Opção ${b}]${enda} ${b}[${enda} Detalhes ${b}]${enda}"
  echo -e "      1)    ${p}Terminal 101${enda} - ${a}Caixa rápido 01${enda} - ${v}192.168.118.101${enda}
      2)    ${p}Terminal 102${enda} - ${a}Caixa rápido 02${enda} - ${v}192.168.118.102${enda}
      3)    ${p}Terminal 103${enda} - ${a}Caixa rápido 03${enda} - ${v}192.168.118.103${enda}
      4)    ${p}Terminal 104${enda} - ${a}Caixa rápido 04${enda} - ${v}192.168..118.104${enda}
      5)    ${p}Terminal 105${enda} - ${a}Caixa 05${enda} ${v}192.168.118.105${enda}
      6)    ${p}Terminal 106${enda} - ${a}Caixa 06${enda} - ${v}192.168.118.106${enda}
      7)    ${p}Terminal 107${enda} - ${a}Caixa 07${enda} - ${v}192.168..118.107${enda}
      8)    ${p}Terminal 108${enda} - ${a}Caixa 08${enda} - ${v}192.168..118.108${enda}
      9)    ${p}Terminal 109${enda} - ${a}Caixa 09${enda} - ${v}192.168.118.109${enda}
     10)    ${p}Terminal 110${enda} - ${a}Caixa 10${enda} - ${v}192.168.118.110${enda}
     11)    ${p}Terminal 111${enda} - ${a}Caixa 11${enda} - ${v}192.168.118.111${enda}
     12)    ${p}Terminal 112${enda} - ${a}Caixa 12${enda} - ${v}192.168.118.112${enda}
     13)    ${p}Terminal 114${enda} - ${a}Caixa 13${enda} - ${v}192.168.118.113${enda}
     14)    ${p}Terminal 114${enda} - ${a}Caixa 14${enda} - ${v}192.168.118.114${enda}
     15)    ${p}Terminal 115${enda} - ${a}Caixa 15${enda} - ${v}192.168.118.115${enda}
     16)    ${p}Terminal 116${enda} - ${a}Caixa 16${enda} - ${v}192.168.118.116${enda}
     17)    ${p}Terminal 117${enda} - ${a}Caixa 17${enda} - ${v}192.168.118.117${enda}
     18)    ${p}Terminal 118${enda} - ${a}Caixa 18${enda} - ${v}192.168.118.118${enda}
     19)    ${p}Terminal 119${enda} - ${a}Caixa 19${enda} - ${v}192.168.118.119${enda}
     20)    ${p}Terminal 120${enda} - ${a}Caixa 20${enda} - ${v}192.168.118.120${enda}
     21)    ${p}Terminal 121${enda} - ${a}Caixa 21${enda} - ${v}192.168.118.121${enda}
     22)    ${p}Terminal 122${enda} - ${a}Caixa 22${enda} - ${v}192.168.118.122${enda}
     23)    ${p}Terminal 123${enda} - ${a}Caixa 23${enda} - ${v}192.168.118.123${enda}
     24)    ${p}Terminal 124${enda} - ${a}Caixa 24${enda} - ${v}192.168.118.124${enda}
     25)    ${p}Terminal 125${enda} - ${a}Caixa 25${enda} - ${v}192.168.118.125${enda}
     26)    ${p}Terminal 126${enda} - ${a}Caixa 26${enda} - ${v}192.168.118.126${enda}
     27)    ${p}Terminal 127${enda} - ${a}Caixa 27${enda} - ${v}192.168.118.127${enda}
     21)    ${p}Terminal 128${enda} - ${a}Caixa 28${enda} - ${v}192.168.118.128${enda}
     22)    ${p}Terminal 129${enda} - ${a}Balcao atacado 1${enda} - ${v}192.168.118.129${enda}
     23)    ${p}Terminal 130${enda} - ${a}Balcao atacado 2${enda} - ${v}192.168.118.130${enda}
     24)    ${p}Terminal 131${enda} - ${a}Padaria 1${enda} - ${v}192.168.118.131${enda}
     25)    ${p}Terminal 132${enda} - ${a}Padaria 2${enda} - ${v}192.168.118.132${enda}
     26)    ${p}Terminal 133${enda} - ${a}Mix Mais${enda} - ${v}192.168.118.133${enda}
     27)    ${p}Terminal 134${enda} - ${a}Boteco${enda} - ${v}192.168.118.134${enda}
     ----------------------------------------------
      0)    ${p}Voltar para o menu anterior${enda}"
########################### COMANDOS ##########################################################
  echo
  echo -en " Escolha a opção: "
  read option
  case $option in
  1) rcx01 ;;
  2) rcx02 ;;
  3) rcx03 ;;
  4) rcx04 ;;
  5) rcx05 ;;
  6) rcx06 ;;
  7) rcx07 ;;
  8) rcx08 ;;
  9) rcx09 ;;
  10) rcx10 ;;
  11) rcx11 ;;
  12) rcx12 ;;
  13) rcx13 ;;
  14) rcx14 ;;
  15) rcx15 ;;
  16) rcx16 ;;
  17) rcx17 ;;
  18) rcx18 ;;
  19) rcx19 ;;
  20) rcx20 ;;
  21) rcx21 ;;
  22) rcx22 ;;
  23) rcx23 ;;
  24) rcx24 ;;
  25) rcx25 ;;
  26) rcx26 ;;
  27) rcx27 ;;
  28) rcx28 ;;
  29) rcx29 ;;
  30) rcx30 ;;
  31) rcx31 ;;
  32) rcx32 ;;
  33) rcx33 ;;
  34) rcx34 ;;


  0) comandos sleep 1 ;;
  *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; reiniciarpdvs ;;
  esac
}
##################################  FUNÇÕES ######################################
rcx01 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa rápido 01${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa rápido 01${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.101 "reboot"; saidarpdv " ${c}Caixa rápido 01${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx01 ;;
  esac
}
###############################################################################
rcx02 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa rápido 02${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa rápido 02${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.102 "reboot"; saidarpdv " ${c}Caixa rápido 02${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx02 ;;
  esac
}
##############################*Nilsonlinux*################################
rcx03 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa rápido 03${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa rápido 03${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.103 "reboot"; saidarpdv " ${c}Caixa rápido 03${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx03 ;;
  esac
}
##############################*Nilsonlinux*################################
rcx04 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa rápido 04${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa rápido 04${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.104 "reboot"; saidarpdv " ${c}Caixa rápido 04${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx04 ;;
  esac
}
##############################*Nilsonlinux*################################
rcx05 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 05${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 05${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.105 "reboot"; saidarpdv " ${c}Caixa 05${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx05 ;;
  esac
}
##############################*Nilsonlinux*################################
rcx06 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 06${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 06${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.105 "reboot"; saidarpdv " ${c}Caixa 06${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx06 ;;
  esac
}
###############################################################################
###############################################################################
rcx07 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa rápido 07${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa rápido 07${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.107 "reboot"; saidarpdv " ${c}Caixa 07${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx07 ;;
  esac
}
###############################################################################
###############################################################################
rcx08 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 08${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 08${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.108 "reboot"; saidarpdv " ${c}Caixa 08${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx08 ;;
  esac
}
###############################################################################
###############################################################################
rcx09 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 09${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 09${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.109 "reboot"; saidarpdv " ${c}Caixa rápido 09${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx09 ;;
  esac
}
###############################################################################
###############################################################################
rcx10 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 10${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 10${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.110 "reboot"; saidarpdv " ${c}Caixa 10${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx10 ;;
  esac
}
###############################################################################
###############################################################################
rcx11 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 11${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 11${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.111 "reboot"; saidarpdv " ${c}Caixa 11${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx11 ;;
  esac
}
###############################################################################
###############################################################################
rcx12 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 12${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 12${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.112 "reboot"; saidarpdv " ${c}Caixa 12${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx12 ;;
  esac
}
###############################################################################
###############################################################################
rcx13 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 13${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 13${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.113 "reboot"; saidarpdv " ${c}Caixa 13${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx13 ;;
  esac
}
###############################################################################
###############################################################################
rcx14 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 14${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 14${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.114 "reboot"; saidarpdv " ${c}Caixa 14${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx14 ;;
  esac
}
###############################################################################
###############################################################################
rcx15 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 15${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 15${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.115 "reboot"; saidarpdv " ${c}Caixa 15${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx15 ;;
  esac
}
###############################################################################
###############################################################################
rcx16 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 16${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa rápido 01${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.116 "reboot"; saidarpdv " ${c}Caixa 16${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx16 ;;
  esac
}
###############################################################################
###############################################################################
rcx17 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 17${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 17${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.117 "reboot"; saidarpdv " ${c}Caixa 17${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx17 ;;
  esac
}
###############################################################################
###############################################################################
rcx18 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa rápido 18${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 18${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.118 "reboot"; saidarpdv " ${c}Caixa 18${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx18 ;;
  esac
}
###############################################################################
###############################################################################
rcx19 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 19${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 19${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.119 "reboot"; saidarpdv " ${c}Caixa 19${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx19 ;;
  esac
}
###############################################################################
###############################################################################
rcx20 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 20${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 20${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.120 "reboot"; saidarpdv " ${c}Caixa 20${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx20 ;;
  esac
}
###############################################################################
###############################################################################
rcx21 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 22${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 22${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.121 "reboot"; saidarpdv " ${c}Caixa 22${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx21 ;;
  esac
}
###############################################################################
###############################################################################
rcx22 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Terminal 123 Lanchonete${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Terminal 123 Lanchonete${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.122 "reboot"; saidarpdv " ${c}Terminal 123 Lanchonete${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx22 ;;
  esac
}
###############################################################################
###############################################################################
rcx23 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Eletro 01${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Eletro 01${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.123 "reboot"; saidarpdv " ${c} da Lanchonete${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx23 ;;
  esac
}
###############################################################################
###############################################################################
rcx24 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa Eletro 02${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa Eletro 02${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.124 "reboot"; saidarpdv " ${c}Eletro 02${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx24 ;;
  esac
}
###############################################################################
###############################################################################
rcx25 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 21${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 21${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.125 "reboot"; saidarpdv " ${c}Caixa 21${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx25 ;;
  esac
}
###############################################################################
###############################################################################
rcx26 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa reserva${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa reserva${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.126 "reboot"; saidarpdv " ${c}Caixa reserva${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx26 ;;
  esac
}
###############################################################################
###############################################################################
rcx27 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 27${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 27${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.127 "reboot"; saidarpdv " ${c}Caixa 27${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx27 ;;
  esac
}
###############################################################################
###############################################################################
rcx28 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Caixa 28${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Caixa 28${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.128 "reboot"; saidarpdv " ${c}Caixa 28${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx28 ;;
  esac
}
###############################################################################
###############################################################################
rcx29 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Balcao atacado 1${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Balcao atacado 1${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.129 "reboot"; saidarpdv " ${c}Balcao atacado 1${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx29 ;;
  esac
}
###############################################################################
###############################################################################
rcx30 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Balcao atacado 2${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Balcao atacado 2${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.130 "reboot"; saidarpdv " ${c}Balcao atacado 2${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx30 ;;
  esac
}
###############################################################################
###############################################################################
rcx31 () {
  logo
  echo -e " ${y}Confirme a reinicialização da Padaria 1${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Padaria 1${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.131 "reboot"; saidarpdv " ${c}Padaria 1${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx31 ;;
  esac
}
###############################################################################
###############################################################################
rcx32 () {
  logo
  echo -e " ${y}Confirme a reinicialização da Padaria 2${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Padaria 2${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.132 "reboot"; saidarpdv " ${c}Padaria 2${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx32 ;;
  esac
}
###############################################################################
###############################################################################
rcx33 () {
  logo
  echo -e " ${y}Confirme a reinicialização da Mix Mais${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Mix Mais${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.133 "reboot"; saidarpdv " ${c}Padaria 1${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx33 ;;
  esac
}
###############################################################################
###############################################################################
rcx34 () {
  logo
  echo -e " ${y}Confirme a reinicialização do Boteco${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Boteco${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.118.134 "reboot"; saidarpdv " ${c}Boteco${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcx34 ;;
  esac
}
###############################################################################
###############################################################################
rcxtodos () {
  logo
  echo -e " ${y}Confirme a reinicialização de todos os Caixas? ${endc}" && echo
  echo -e " ${bu}Esta operação não pode ser desfeita.${enda}"
  echo && echo -en " ${y}Deseja continuar? {s/n}${endc} "
  read option
  case $option in
    s) echo && echo -e " ${r}Reiniciando${endc} ${y}Todos os Caixas${endc}"; sshpass -p 1 ssh -o "StrictHostKeyChecking no" root@192.168.3.131 "reboot"; saidarpdv " ${c}Caixa rápido 01${endc}" ;;
    n) echo -e " ${y}OK. Retornando para o menu anterior${end}"; sleep 1; reiniciarpdvs ;;
    *) echo -e " \"$option\"  ${r}Comando inválido!${endc}"; sleep 1; rcxtodos ;;
  esac
}
###############################################################################
# Comando executado para reinicialização dos PDV,s
saidarpdv () {
    echo && echo -e "Você executou o comando no${b}$1${enda}."
    echo -e "Comando disparado ${r}reboot${endc} no${b}$1${endc}. Volte para o menu anterior."
    echo && echo -e " ${y}Digite Enter para retornar.${endc}"
    read input ; reiniciarpdvs ;
}