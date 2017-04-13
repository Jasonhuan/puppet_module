class php::config{
  file{ 'php.ini':
    path => '/etc/opt/remi/php70/php.ini',
    ensure => file,
    require => Class['php::install'],
    source => "puppet:///modules/php/php.ini",
  }
}
