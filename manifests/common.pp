class slurm::common (
  $common_pkgs = $::slurm::common_pkgs,
  $version     = $::slurm::version,
  $link_configdir = $::slurm::link_configdir,
  $link_target = $::slurm::link_target,
  $sysconfig_lines = $::slurm::sysconfig_lines,
  ) {
    #All slurm systems need these packages installed

    $common_pkgs.each |String $pkg| {
      package {$pkg:
        ensure => $version,
      }
    }

    if $sysconfig_lines != [] {
      file {'/etc/sysconfig/slurm':
        content => template('slurm/sysconfig_slurm.erb'),
        owner   => root,
        group   => root,
        mode    => '0644',
      }
    }

    if $link_configdir == true {
      file { '/etc/slurm':
        ensure => link,
        force  => true,
        target => $link_target,
      }
    }
    #We do NOT start the service here.
    #Somethings might want the packages, but not to RUN slurm.
  }
