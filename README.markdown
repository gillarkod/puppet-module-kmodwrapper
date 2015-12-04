#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Usage - Configuration options and additional functionality](#usage)

## Overview

CampToCamp does not wish to add hiera support directly into the kmod module that they maintain.
They suggested that a kmodwrapper should be created that adds the hiera support. This is it.

## Module Description

Adds hiera support for the kmod module available at https://github.com/camptocamp/puppet-kmod.

## Usage

Available parameters are...
```
kmodwrapper::aliases
kmodwrapper::blacklists
kmodwrapper::installs
kmodwrapper::loads
kmodwrapper::options
kmodwrapper::setings
```

Since kmodwrapper uses the available providers in puppet-kmod module
it is suggested to read the puppet-kmod module readme for an overview into
each available parameter/define.

#### Hiera Example

This will initialize kmodwrapper.
```
classes:
  - 'kmodwrapper'
```

Adding this will set the parameter 'kipmid_max_busy_us' to the value of 10 for the ipmi_si module.
```
kmodwrapper::options:
  'ipmi_si':
    option: 'kipmid_max_busy_us'
    value: '10'
```
