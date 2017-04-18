class php_fpm::install{
  package{ 'php70-php-fpm':
    ensure => installed,
  }
}
