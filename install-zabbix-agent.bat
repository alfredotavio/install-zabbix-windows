@ECHO OFF

REM Diretório raiz
cd C:\

REM Baixar instalador do Zabbix Agent
curl https://raw.githubusercontent.com/alfredotavio/install-zabbix-windows/4d1b25e29bed2e8e418a3126a069734f4f824e11/zabbix_agent.msi --output zabbix_agent.msi

REM Instalar Zabbix Agent
msiexec /l*v install-zabbix-agent-log.txt /i zabbix_agent.msi^
 SERVER=IP/DNS^
 SERVERACTIVE=IP/DNS^
 HOSTNAME=NOME^
 TIMEOUT=15^
 /qn
