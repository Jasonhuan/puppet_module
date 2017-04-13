class mysql::service{
  service{ 'mysqld':
    name => 'mysqld',
    ensure => 'running',
    enable => 'true',
    require => Class['mysql::install'],
    require => Class['mysql::config'],
  }
}
