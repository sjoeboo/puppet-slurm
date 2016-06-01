class slurm::compute (
  $compute_pkgs = $::slurm::compute_pkgs
  ) {
  $compute_pkgs.each |String $pkg| {
    package {$pkg:
      ensure => installed,
    }
  }
  service { 'slurmd':
    ensure => running,
    enable => true,
  }
}
