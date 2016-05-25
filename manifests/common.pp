class slurm::common (
  $common_pkgs = $::slurm::common_pkgs,
  $version     = $::slurm::version,
  ) {
    #All slurm systems need these packages installed

    $common_pkgs.each |String $pkg| {
      package {$pkg:
        ensure => $version,
      }
    }

  }
