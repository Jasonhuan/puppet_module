class nginx::config{
  file{ 'nginx.conf':
    path => '/etc/nginx/nginx.conf',
    ensure => file,
    require => Class['nginx::install'],
    source => "puppet:///modules/nginx/nginx.conf",
  }
}
