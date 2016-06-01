class slurm::master (
    $spool_dir = $::slurm::spool_dir,
    $user      = $::slurm::user,
    $master_pkgs = $::slurm::master_pkgs,
  ) {
    $master_pkgs.each |String $pkg| {
      package {$pkg:
        ensure => installed,
      }
    }
    file { $spool_dir:
      ensure => directory,
      owner  => $user,
      mode   => '0755',
    }
    service {'slurmctld':
      ensure => running,
      enable => true,
    }
  }
