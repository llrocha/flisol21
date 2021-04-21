# Criando e publicando microsserviços com FastAPI

- Descrição
- Instalação do ambiente de desenvolvimento
- Base de CEPs
- Fazendo o build da base e do conteiner Docker
- Executando seu conteiner
- Dando uma olhada no microsserviço
- Testando a aplicação com o LOCUST

*Leia este documento em outros idiomas: [English](README.md), [Portuguese](README.pt_BR.md)*

## Descrição
---
Este projeto tem a intenção de demonstrar a construção de um microsserviço utilizando a [FastAPI](https://fastapi.tiangolo.com/). Nesse projeto vamos criar uma base de CEPs usando [SQLite](https://sqlite.org/index.html), demonstraremos o uso do [LOCUST](https://locust.io/) com a nossa API, como ferramenta de análise de performance.
Para criação de nosso ambiente de desenvolvimento, usamos o [pipenv](https://pipenv.pypa.io/en/latest/)

O ambiente de desenvolvimento, está na raíz do projeto, existe um arquivo chamado Pipfile, que contém todas as bibliotecas usadas no projeto, ele é lido pelo pipenv.


## Instalação do ambiente de desenvolvimento
---
Para começar é necessário que você tenha o Python instalado em seu computador, nesse nosso projeto você não precisa instalar o Python com privilégios de administrador. Tutoriais para a instalação do Python estão disponíveis em: https://realpython.com/installing-python/<br>
Aqui vamos usar o Linux, como plataforma de desenvolvimento, caso utilize o Windows, você pode seguir esse [tutorial](https://realpython.com/installing-python/#how-to-install-from-the-full-installer). Caso prefira instalar da Microsoft Store siga esse [tutorial](https://realpython.com/installing-python/#how-to-install-from-the-microsoft-store).<br>
Para fazer download dos instaladores de Python para Windows [clique aqui](https://www.python.org/downloads/windows/)<br>
Em Linux normalmente o Python já vem instalado, mas você precisa verificar a versão do mesmo, precisa ser 3.8+, caso não tenha essa versão, será necessário instalar, siga esse [tutorial](https://realpython.com/installing-python/#how-to-install-python-on-linux), para instalação em Linux.<br>
A seguir como instalar o pipenv:
[![asciicast](https://asciinema.org/a/EpuDUUwfmis2D2x5SPFD6HrsQ.svg)](https://asciinema.org/a/EpuDUUwfmis2D2x5SPFD6HrsQ)



## Base de CEPs
---
A base de CEP que foi usada neste projeto, foi encontrada no site [CEPlá](http://cep.la/), você pode baixar a base de: http://cep.la/CEP-dados-2018-UTF8.zip<br>
Existem mais duas bases, eu não sei se elas tem o mesmo formato que essa, portanto pode ser que o [programa](build_database.py) que constrói a base de CEPs, quebre, caso não esteja no layout da base indicada. O arquivo zip contém um arquivo chamado ceps.txt.

Para iniciar seu ambiente de testes e desenvolvimento execute:
```
$ pipenv shell
```

Para rodar o programa, você vai primeiro precisar da base de CEPs, para isso execute:
```
python build_database.py
```

Agora sim, com a base de CEPs construida, você pode começar a executar o nosso microsserviço:
```
python main.py
```

Agora para poder testar, abra http://localhost:8080/



## Fazendo o build da base e do conteiner Docker
---

## Executando seu conteiner
---

## Dando uma olhada no microsserviço
---

## Testando a aplicação com o LOCUST
---
