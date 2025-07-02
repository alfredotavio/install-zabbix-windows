@ECHO OFF

REM Definindo argumentos
set /p server=Digite o IP/DNS do Zabbix Server: 
set /p hostname=Digite o Hostname do Zabbix Agent: 

REM Baixar instalador do Zabbix Agent
curl https://cdn.zabbix.com/zabbix/binaries/stable/7.0/latest/zabbix_agent-7.0-latest-windows-amd64-openssl.msi --silent --output %TEMP%\zabbix_agent.msi

REM Liberar porta 10050 no Firewall
netsh advfirewall firewall add rule name="Zabbix Agent" dir=in action=allow protocol=TCP localport=10050

REM Instalar Zabbix Agent
msiexec /l*v %TEMP%\install-zabbix-agent-log.txt /i %TEMP%\zabbix_agent.msi^
 SERVER=%server%^
 SERVERACTIVE=%server%^
 HOSTNAME=%hostname%^
 TIMEOUT=15^
 /qn
