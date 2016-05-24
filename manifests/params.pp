class slurm::params {
  $common_pkgs = ['slurm','slurm-devel','slurm-munge','slurm-perlapi','slurm-plugins','slurm-sjobexit','slurm-sjstat','slurm-torque']
  $master_pkgs = []
  $client_pkgs = []
  $db_pkgs = ['slurm-slurmdbd']
  $client = true
  $master = false
  $db = false
  $submit = false
  $user = 'slurm'
  $group = 'slurm'
}
