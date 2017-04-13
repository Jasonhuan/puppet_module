class redis::service{
  service{ 'redis':
    name => 'redis',
    ensure => running,
    enable => true,
    require => Class['redis::install'],
    require => Class['redis::config'],
  }
}
