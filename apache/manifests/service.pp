class apache::service{
  service{ 'httpd':
    name => 'httpd',
    ensure => running,
    enable => true,
    require => Class['apache::install'],
    require => Class['apache::config'],
  }
}
