class slurm::user (
  $user = $::slurm::user,
  ) {
    user { $user:
      ensure => present,
      system => yes,
    }
  }
