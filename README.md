# Execução e Orientações

Minha imagem estará em : brunobertasso/codeeducation.

```bash
docker run brunobertasso/codeeducation
```

# Descrição do Desafio 

Você terá que publicar uma imagem no docker hub. Quando executarmos:

[] requisito 1 - Quando executarmos: docker run **brunobertasso/codeeducation** o resultado deve ser: 
   **Code.education Rocks!**
[] requisito 2 - A imagem de nosso projeto Go precisa ter menos de 2MB =)


> Dica: No vídeo de introdução sobre o Docker quando falamos sobre o sistema de arquivos em camadas, apresento uma imagem "raiz", talvez seja uma boa utilizá-la.


# Solucionando o Problema

1. a imagem base do docker é a [scratch](https://hub.docker.com/_/scratch/) que segundo a documentação é orientada a fazer imagens mínimas com possivelmente um único binário.
2. logo farei um dockerfile de múltiplos estágios, sendo que no estágio builder usarei imagem oficial do [golang](https://hub.docker.com/_/golang) e compilarei para um executável, o resultado será copiado para um segundo estágio baseado na imagem scratch.

# Comandos 

## Build da Imagem

```bash
docker build -t brunobertasso/codeeducation .
```

## Publicando no DockerHub
```bash
docker login
docker push brunobertasso/codeeducation
```