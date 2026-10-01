# 🧛 Vampire War — Projeto de Preservação

Tentativa de reviver **Vampire War**, um jogo de navegador mobile (rodava em WebView) de ~2012–2014, cujos servidores foram desligados em 2014.

## 🎯 Objetivo

Fazer o jogo rodar localmente, substituindo o back-end original (que não existe mais) por um servidor local que emula as respostas da API.

## 🔧 Situação atual

- Os arquivos do jogo foram extraídos de um **APK antigo** usando o [Apktool](https://apktool.org/).
- O back-end original foi substituído por um servidor local (**Node.js + Express**).
- Alguns arquivos estão **faltando**. Por exemplo, um script de inicialização que parece ter sido gerado em tempo de execução pelo app nativo e nunca ficou salvo em disco.

## 🔍 Preciso de ajuda

Se você tem alguma dessas informações, abra uma *issue* ou entre em contato:

- Já trabalhou com preservação de jogos de navegador/WebView da época (2012–2015)?
- Conhece algum **arquivo, comunidade ou repositório** onde esse tipo de material costuma ser guardado?
- Tem uma **cópia mais completa** dos arquivos do jogo (APK original, assets, scripts, dumps de tráfego de rede etc.)?
- Sabe como o app nativo gerava o script de inicialização em tempo de execução?

## 🤝 Como contribuir

1. Abra uma [issue](../../issues) com o que você sabe ou tem.
2. Se tiver arquivos, indique a origem e a versão do jogo (se souber).
3. Pull requests com melhorias no servidor de emulação são bem-vindos.

## ⚠️ Aviso

Este é um projeto sem fins lucrativos, feito apenas para fins de **preservação e estudo**. Todos os direitos do jogo pertencem aos seus respectivos criadores e detentores.
