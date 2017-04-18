class initialize::selinux{
  file{ 'conf':
    path => '/etc/selinux/config',
    ensure => file,
    source => 'puppet:///modules/initialize/config',
  }
  exec{ 'turn down selinux':
    command => 'setenforce 0',
    path => '/usr/sbin',
  }
}
