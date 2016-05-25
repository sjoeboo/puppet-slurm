class slurm (
  String $version    = $::slurm::params::version,
  Array $common_pkgs = $::slurm::params::common_pkgs,
  Array $master_pkgs = $::slurm::params::master_pkgs,
  Array $client_pkgs =  $::slurm::params::client_pkgs,
  Array $db_pkgs     = $::slurm::params::db_pkgs,
  Boolean $client    = $::slurm::params::client,
  Boolean $master    = $::slurm::params::master,
  Boolean $db        = $::slurm::params::db,
  Boolean $submit    = $::slurm::params::submit,
  String $user       = $::slurm::params::user,
  Boolean $pam       = $::slurm::params::pam,
  ) inherits slurm::params {

    #All slurm things need commmon/shared user
    class { '::slurm::common': } ->
    class { '::slurm::user': }


}
