@ECHO OFF

REM Definindo argumentos
set /p server=Digite o IP/DNS do Zabbix Server: 
set /p hostname=Digite o Hostname do Zabbix Agent: 

REM Diretório temporário
cd %TEMP%

REM Baixar instalador do Zabbix Agent
curl https://cdn.zabbix.com/zabbix/binaries/stable/6.0/6.0.22/zabbix_agent-6.0.22-windows-amd64-openssl.msi --silent --output zabbix_agent.msi

REM Instalar Zabbix Agent
msiexec /l*v install-zabbix-agent-log.txt /i zabbix_agent.msi^
 SERVER=%server%^
 SERVERACTIVE=%server%^
 HOSTNAME=%hostname%^
 TIMEOUT=15^
 /qn
