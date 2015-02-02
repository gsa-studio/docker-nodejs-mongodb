## Node.js and MongoDB Dockerfile


This repository contains **Dockerfile** of [MongoDB](http://www.mongodb.org/) and [Node.js](http://nodejs.org/) for [Docker](https://www.docker.com/).


### Base Docker Image

* [dockerfile/ubuntu](http://dockerfile.github.io/#/ubuntu)


### Installation

1. Install [Docker](https://www.docker.com/).

2. You can build an image from Dockerfile: `docker build -t="gsa-studio/nodejs-mongodb" github.com/gsa-studio/dockerfile-nodejs-mongodb`


### Usage

#### Run `gsa-studio/nodejs-mongodb`

    sudo docker run -it --rm -p 3000:3000 -p 27017:27017 -v <project-dir>:/data gsa-studio/nodejs-mongodb

#### Run `mongod`

    /run.sh

#### Run `node`

    nodemon <yourserver.js>
