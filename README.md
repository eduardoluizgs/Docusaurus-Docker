# Website

This website is built using [Docusaurus 2](https://v2.docusaurus.io/), a modern static website generator.

## Installation

```console
npm|yarn install
```

## Local Development

```console
npm|yarn start
```

This command starts a local development server and open up a browser window. Most changes are reflected live without having to restart the server.

## Build

```console
npm|yarn build
```

This command generates static content into the `build` directory and can be served using any static contents hosting service.

## Docker

```console
docker build -t docusaurus .
docker run -d -p 3003:80 --name docusaurus docusaurus:latest
```

Or:

```console
docker-compose up -d
```
