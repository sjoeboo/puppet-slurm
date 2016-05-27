class slurm::params {
  $version = '15.08.11'
  $common_pkgs = ['slurm','slurm-devel','slurm-munge','slurm-perlapi','slurm-plugins','slurm-sjobexit','slurm-sjstat','slurm-torque']
  $master_pkgs = []
  $compute_pkgs = []
  $db_pkgs = ['slurm-slurmdbd']
  $client = true
  $master = false
  $db = false
  $submit = false
  $common = true
  $user = 'slurm'
  $pam = true

  $link_configdir = false
  $link_target = undef

  $sysconfig_lines = []

}
