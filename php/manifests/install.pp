class php::install{
  package{ ['php70', 'php70-php-mysqlnd', 'php70-php-pecl-mysql', 'php70-php-pecl-redis', 'php70-php-phpiredis', 'php70-php-pdo',
  'php70-php-gd', 'php70-php-xml', 'php70-php-xmlrpc', 'php70-php-mcrypt', 'php70-php-pecl-memcache', 'php70-php-pecl-memcached',
  'php70-php-pecl-crypto', 'php70-php-pear', 'php70-php-mbstring', 'php70-php-pecl-imagick', 'php70-php-pecl-krb5', 'php70-php-pecl-zip', 'php70-php-tidy']:
    ensure => installed,
  }
}
