# slurm

A simple (i hope) module to deploy/manage slurm.

Aimed to manage:

* Slurm master node(s)
* Slurm submit node(s)
* Slurm compute node(s)
* Other Slurm-ish nodes (nodes that need the packages/user/etc but not be part of the cluster)

Assumptions:
------------

This module assumes:

* Slurm packages have been built and are available to all systems you plan onusing this module on.
* Slurm config (`slurm.conf`) is available somewhere for all nodes in the cluster to access.

Slurm.conf location
-------------------

This module can, if you wish, link the default slurm config directory `/etc/slurm/slurm.conf` to another location, or, modify `/etc/sysconfig/slurm` to point to another location. The choice is yours
