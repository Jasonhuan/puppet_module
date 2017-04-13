class mysql::install{
  package { ['mysql-community-client', 'mysql-community-common', 'mysql-community-devel', 'mysql-community-libs', 'mysql-community-server']:
    ensure => installed,
  }
}
