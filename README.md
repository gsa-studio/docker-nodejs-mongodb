## Node.js and MongoDB Dockerfile


This repository contains **Dockerfile** of [MongoDB](http://www.mongodb.org/) and [Node.js](http://nodejs.org/) for [Docker](https://www.docker.com/).


### Base Docker Image

* [dockerfile/ubuntu](http://dockerfile.github.io/#/ubuntu)


### Installation

1. Install [Docker](https://www.docker.com/).

2. You can build an image from GitHub: `docker build -t gsastudio/meanstack github.com/gsa-studio/dockerfile-meanstack`
   (You can build an image from Dockefile after clone: `docker build -t gsastudio/meanstack .`)


### Usage

#### Run `gsastudio/meanstack`

    sudo docker run -it --rm -p 3000:3000 -p 27017:27017 -v <project-dir>:/data gsastudio/meanstack

#### Run `mongod`

    /run.sh

#### Run `node`

    nodemon <yourserver.js>
