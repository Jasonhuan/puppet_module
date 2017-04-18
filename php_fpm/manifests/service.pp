class php_fpm::service{
  service{ 'php70-php-fpm':
    name => 'php70-php-fpm',
    ensure => running,
    enable => true,
    require => Class['php_fpm::install'],
    require => Class['php_fpm::config'],
  }
}
