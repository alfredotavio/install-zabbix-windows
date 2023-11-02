# Instalar Zabbix Agent no Sistema Operacional Windows via Script Batch

## 🗒️ Descrição
* O script atual utiliza o instalador do Zabbix Agent na versão 6.0.22. Caso deseje utilizar uma versão diferente do instalador, basta editar o script e ajustar a URL para a versão desejada. Você pode encontrar as diversas versões disponíveis nas [URL1](https://www.zabbix.com/download_agents) ou [URL2](https://cdn.zabbix.com/zabbix/binaries/stable/).
* Ao executar o script, será necessário especificar o endereço IP/DNS do Zabbix Server, bem como o hostname do Zabbix Agent previamente registrado no Zabbix Server.
* O script cria uma regra no Firewall liberando a porta 10050 para entrada.
* Certifique-se de executar o script como Administrador através do Prompt de Comando do Windows (CMD).

## ◼️ Instalação
Baixe o Script:
```batch
curl https://raw.githubusercontent.com/alfredotavio/install-zabbix-windows/main/install-zabbix-agent.bat --silent --output C:\install-zabbix-agent.bat
```
Execute o Script:
```batch
C:\install-zabbix-agent.bat
```
Digite as informações solicitadas:
```batch
> Digite o IP/DNS do Zabbix Server: zabbix.alfredocastro.com.br
> Digite o Hostname do Zabbix Agent: SRV_WIN_AD
```

## 📂 Estrutura
```batch
.
└── install-zabbix-agent.bat
```

## 👨‍💻 Autor
<table>
  <tr>
    <td align="center">
      <a href="#">
        <a href="https://www.linkedin.com/in/alfredotavio/"><img src="https://avatars.githubusercontent.com/u/22720865?v=4" width="100px;" alt="Foto do Alfredo Castro"/><br>
        <sub>
          <b>Alfredo Castro</b>
        </sub>
      </a>
    </td>
  </tr>
</table>
