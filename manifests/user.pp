class slurm::user (
  $user = $::slurm::user,
  $group = $slurm::group,
  ) {
    user {$user:
      ensure => present,
      gid    => $group,
      system => yes,
    }
  }
