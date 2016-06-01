class slurm::master (
    $spool_dir = $::slurm::spool_dir,
    $user      = $::slurm::user,
  ) {
    file { $spool_dir:
      ensure => directory,
      owner  => $user,
      mode   => '0755',
    }
  }
