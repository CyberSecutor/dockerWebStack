# Introduction

This tool allows for loading of environment variables similar to 
`symfony/dotenv`, only then for Docker Compose environments. Loading 
environment variable this way should help with a more consistent development
process.

# Installation

- Add the package to your project.
  `composer requrie cybersecutor/docker-web-stack`
- Run `vendor/bin/dev init`
  This will install some project configuration files and a docker-compose.yml
- Copy `.env.example` to `.env` and change the settings as appropriate.
- Do a first initialization by running `vendor/bin/dev run init`
  This will create and initialize a database using the sql script defined in .env:$URL_DB

# Usage

Ensure `docker-compose.yml` and `.env` are
configured. Then start the environment with `dev up`.

# Using composer without installing it locally

The setup will include a console from where you can run composer 
and PHP scripts without installing them locally.
Use `vendor/bin/dev console` to start the console.