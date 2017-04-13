class initialize::yum{
  file{ 'epel.repo':
    path => '/etc/yum.repos.d/epel.repo',
    ensure => file,
    source => "puppet:///modules/initialize/epel.repo",
  }
  file{ 'mysql-community.repo':
    path => '/etc/yum.repos.d/mysql-community.repo',
    ensure => file,
    source => "puppet:///modules/initialize/mysql-community.repo",
  }
  file{ 'remi-php70.repo':
    path => '/etc/yum.repos.d/remi-php70.repo',
    ensure => file,
    source => "puppet:///modules/initialize/remi-php70.repo",
  }
  file{ 'remi-safe.repo':
    path => '/etc/yum.repos.d/remi-safe.repo',
    ensure => file,
    source => "puppet:///modules/initialize/remi-safe.repo",
  }
}
