# kodi

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with kodi](#setup)
    * [Setup requirements](#setup-requirements)
    * [Beginning with kodi](#beginning-with-kodi)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

Installs the Kodi Open Source Home Theatre application on your system.

### Beginning with kodi

To get started without any fuss, use an include statement:

    include kodi


## Usage

If you want to run bleeding edge Kodi, use the following:

    class { 'kodi':
        prerelease => true
    }


## Limitations

Right now, this module targets Ubuntu - but I am keen to clean things up and
extend to other linux distributions and Windows.

## Development

Please feel free to head to the Github page and submit a pull request.

