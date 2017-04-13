class mysql::config{
  file{ 'my.cnf':
    path => '/etc/my.cnf',
    ensure => file,
    require => Class['mysql::install'],
    source => "puppet:///modules/mysql/my.cnf",
  }
}
