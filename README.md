# ferm-nftables-compat

# Instructions

## Prepare

* Install Quilt: `apt install quilt`
* Install ferm build dependencies: `apt build-dep ferm`
* Create a directory to work in: `mkdir /tmp/fermwork`, and change your working directory to it
* Download ferm source package: `apt source ferm`

## Push patches

Push all patches with:

    make push

Pop all patches with:

    make clean

## Build package

First, change the working directory to the ferm source directory (`cd ferm-2.5.1`).

Update the version number, changelog and distribution value:

    dch --local cyberfusion

Build the package with:

    debuild -us -uc

You could then install it with:

    debi
