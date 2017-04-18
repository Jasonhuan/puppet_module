class redis::install{
  package{ ['redis']:
    ensure => installed,
  }
}
