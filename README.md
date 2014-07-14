# refgenomics/ubuntu

*Note: This repository forked from the original great work created by Frank Macreery.*

[![Docker Repository on Quay.io](https://quay.io/repository/refgen/ubuntu/status)](https://quay.io/repository/refgenomics/ubuntu)

Ubuntu base image with security patches, git, and [Bats](https://github.com/sstephenson/bats). The base for all other refgenomics docker images.

## Installation and Usage

    docker pull quay.io/refgenomics/ubuntu
    docker run -i -t quay.io/refgenomics/ubuntu

## Available Tags

* `latest`: Ubuntu 12.04 (LTS)
* `12.04`: Ubuntu 12.04 (LTS)

## Included Tools/Patches

* `bats`: The [Bats](https://github.com/sstephenson/bats) Bash Automated Testing System
* `git`: Git Version Control System.
* All Ubuntu LTS security updates (but not non-critical updates).

## Tests

Tests are run as part of the `Dockerfile` build. To execute them separately within a container, run:

    bats test

## Deployment

To push the Docker image to Quay, run the following command:

    make release

## Copyright and License

Originally created by [Frank Macreery](https://github.com/fancyremarker) @ Aptible.

MIT License, see [LICENSE](LICENSE.md) for details.

Copyright (c) 2014 [Aptible](https://www.aptible.com), [Frank Macreery](https://github.com/fancyremarker), and contributors.
