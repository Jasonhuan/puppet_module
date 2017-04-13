class apache::install{
  package{ ['httpd', 'mod_ssl', 'mod_nss']:
    ensure => installed,
  }
}
