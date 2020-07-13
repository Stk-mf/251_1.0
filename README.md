# 251_1.0
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
