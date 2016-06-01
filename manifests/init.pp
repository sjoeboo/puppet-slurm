class slurm (
  String $version         = $::slurm::params::version,
  Array $common_pkgs      = $::slurm::params::common_pkgs,
  Array $master_pkgs      = $::slurm::params::master_pkgs,
  Array $compute_pkgs      =  $::slurm::params::compute_pkgs,
  Array $db_pkgs          = $::slurm::params::db_pkgs,
  Boolean $client         = $::slurm::params::client,
  Boolean $master         = $::slurm::params::master,
  Boolean $db             = $::slurm::params::db,
  Boolean $submit         = $::slurm::params::submit,
  Boolean $common         = $::slurm::params::common,
  String $user            = $::slurm::params::user,
  Boolean $pam            = $::slurm::params::pam,
  String $spool_dir       = $::slurm::params::spool_dir,
  Boolean $link_configdir = $::slurm::params::link_configdir,
  Optional[String] $link_target     = $::slurm::params::link_target,
  Array $sysconfig_lines  = $::slurm::params::sysconfig_lines,
  ) inherits slurm::params {

    #All slurm things need commmon/shared user
    if $common == true {
      class { '::slurm::common': } ->
      class { '::slurm::user': }
    }
    #if $compute == true {
    #  class {'::slurm::compute': }
    #}
    #if $master == true {
    #  class {'::slurm::master': }
    #}
    #if $submit == true {
    #  class {'::slurm::submit': }
    #}
    #if $db == true {
    #  class {'::slurm::db': }
    #}
}
