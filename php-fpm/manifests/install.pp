class php-fpm::install{
  package{ 'php70-php-fpm':
    ensure => installed,
  }
}
