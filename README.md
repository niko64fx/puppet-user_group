# user_group

#### Table of Contents

1. [Description](#description)
1. [Setup - The basics of getting started with user_group](#setup)
    * [What user_group affects](#what-user_group-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with user_group](#beginning-with-user_group)
1. [Usage - Configuration options and additional functionality](#usage)
1. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
1. [Limitations - OS compatibility, etc.](#limitations)
1. [Development - Guide for contributing to the module](#development)

## Description

This [Puppet module](http://docs.puppetlabs.com/puppet/latest/reference/modules_fundamentals.html) allows the management of OS users and groups using Hiera.

## Setup

### What user_group affects:

- `/home/` directories and files.
- `/root/` directories and files.
- `/etc/passwd`
- `/etc/shadow`
- `/etc/group`

### Setup Requirements

Nothing is required except usage of Hiera.

### Beginning with user_group

## Usage

To have Puppet create the user toto (with its group):

``` yaml
user_group::group_list:
  'toto':
    ensure: present
    gid: 1002

user_group::user_list:
  'toto':
    ensure: present
    uid: 1002
    gid: 1002
    comment: 'Toto user_group'
    home: '/home/toto'
    managehome: true
    shell: '/bin/bash'
```

## Reference

Here, include a complete list of your module's classes, types, providers,
facts, along with the parameters for each. Users refer to this section (thus
the name "Reference") to find specific details; most user_groups don't read it per
se.

## Limitations

This module has been validated on:

* CentOS:
    * 7.2 x86_64

## Development

Since your module is awesome, other user_groups will want to play with it. Let them
know what the ground rules for contributing are.

## Release Notes/Contributors/Etc. **Optional**

If you aren't using changelog, put your release notes here (though you should
consider using changelog). You can also add any additional sections you feel
are necessary or important to include here. Please use the `## ` header.
