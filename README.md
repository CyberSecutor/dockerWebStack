# Introduction

This tool allows for loading of environment variables similar to 
`symfony/dotenv`, only then for Docker Compose environments. Loading 
environment variable this way should help with a more consistent development
process.

## Services available in this stack  
- Console: this can be used to execute CLI commands on the stack
- php-fpm: container for running PHP processes
- nginx: nginx service connected with the php-fpm service
- elasticsearch: an elasticsearch ELK stack using port 5602 for Kibana

To disable one of these services disable it in the docker-compose.yml for your project.

# Installation

## Using composer without installing it locally
This project includes a `console` container you can use to run commands with the php container/version applicable for your project.
THis console can also be used to run composer if you don't have it installed locally or need it for a different PHP version.

### Steps to use composer for the first initialization of your project
- Clone this project:  
  `git clone git@github.com:CyberSecutor/dockerWebStack.git`
- Run the `console` container from the root of this project:  
   `bin/dev console`
- Navigate to your project and execute your composer command

As soon as the docker-web-stack is installed you don't need this clone anymore.
You can always start the console using `vendor/bin/dev console`

## Install the package ino your project
- For now, it is only available as a VCS repository,
  `composer config repositories.CyberSecutor vcs https://github.com/CyberSecutor/dockerWebStack`
- Install the package globally
  `composer require --dev cybersecutor/docker-web-stack`
- Run `vendor/bin/dev init` (or just `dev init` )
  This will install some project configuration files and a docker-compose.yml
- Copy or add `.env.example` to `.env` or `.env.local` and change the settings as appropriate for your project.
- Do a first initialization by running `vendor/bin/dev run init`
  This will create and initialize a database using the sql script defined in .env:$URL_DB
  
## Install globally
To have easy access to the dev command when using it on multiple projects it is recommended to install the 
package globally for the current user.
- For now, it is only available as a VCS repository,
  `composer global config repositories.CyberSecutor vcs https://github.com/CyberSecutor/dockerWebStack`
- Install the package globally
  `composer global require cybersecutor/docker-web-stack`
- Add your composer vendor bin directory to the PATH
  `export $PATH:${HOME}/.composer/vendor/bin`
  Add that to your `.bashrc` or `.zshrc` to make it available after a restart.

# Usage

Ensure `docker-compose.yml` and `.env` are
configured. Then start the environment with `dev up`.

