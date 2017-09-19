# pug_lab

Repositório contendo o esqueleto para o Laboratório/Palestra sobre Pug.
No package.json estarão todos os pacotes que serão utilizados, para que os participantes o instalem antes de ir para a palestra (para maior agilidade e pq não sabemos se haverá internet disponível e nem se ela é boa).

## Instalação

Para instalar os pacotes rode o comando abaixo na pasta do projeto:
`npm install`

Logo após, rode:
`node index.js`

Acesse a url http://localhost:3000/ pelo seu navegador.

Prontinho! Agora é só assistir o minicurso e por as "mãos na massa".

### Docker

Você também pode rodar o projeto com Docker caso o tenha instalado em seu computador. Para isso, crie a imagem baseada no arquivo Dockerfile com o comando abaixo:

```
docker build -t pug_lab/node-web-app .
```

Terminada a execução do script, rode o seguinte comando para criar um container rodando a aplicação:

```
docker run -it --rm -p 3000:3000 pug_lab/node-web-app
```

Com o comando acima, todas as alterações que fizer no projeto só serão aplicadas se o container for reiniciado. Para evitar que isso aconteça, adicione o diretório do projeto como volume no container da seguinte forma:

```
docker run -it --rm -p 3000:3000 -v $PWD:/usr/src/app pug_lab/node-web-app
```

Feito isso, acesse a url http://localhost:3000/ pelo seu navegador.
