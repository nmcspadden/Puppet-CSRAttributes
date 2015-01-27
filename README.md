# Puppet-CSRAttributes
CSR attributes for Puppet clients

These are client attributes for the Puppet CSR.

This includes a [Whitebox Packages](http://s.sudre.free.fr/Software/Packages/about.html) pkgproj file to build yourself.

Right now the pkgproj puts the postflight script into the package directly, but you can remove this and put into a Munki postinstall script instead (which is what I do).

The script installs the csr_attributes.yaml file into /etc/puppet/csr_attributes.yaml and then fills out the serial number and physical/virtual Facter fact into the attributes.  These CSR attributes will be used on clients to generate a cert for use with [Puppetmaster-WHDCLI](https://github.com/macadmins/docker-puppetmaster-whdcli), which autosigns Puppet client certificates by looking them up in WebHelpDesk asset inventory.