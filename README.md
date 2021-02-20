# Introduction

This tool allows for loading of environment variables similar to 
`symfony/dotenv`, only then for Docker Compose environments. Loading 
environment variable this way should help with a more consistent development
process.

# Installation

If you don't have composer and/or installed you can check out this repo and use the basic console instance to 
execute composer and php commands to initiate your project.
Just run `bin/dev console` in the root of this project.

## Install the package ino your project
- For now, it is only available as a VCS repository,
  `composer config repositories.CyberSecutor vcs https://github.com/CyberSecutor/dockerWebStack`
- Install the package globally
  `composer require cybersecutor/docker-web-stack`
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

# Using composer without installing it locally

The setup will include a console from where you can run composer 
and PHP scripts without installing them locally.
Use `vendor/bin/dev console` to start the console.