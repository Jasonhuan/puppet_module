class initialize::limits{
  file{ 'limits.conf':
    path => '/etc/security/limits.conf',
    ensure => file,
    source => "puppet:///modules/initialize/limits.conf",
  }
}
