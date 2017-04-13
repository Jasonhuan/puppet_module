class redis::install{
  package{ ['redis', 'php-pecl-redis']:
    ensure => installed,
  }
}
