class nginx::service{
  service{ 'nginx':
    name => 'nginx',
    ensure => running,
    enable => true,
    require => Class['nginx::install'],
    require => Class['nginx::config'],
  }
}
