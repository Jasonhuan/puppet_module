class initialize::ssh{
  file{ 'conf':
    path => '/etc/selinux/config'
    ensure => file,
    source => 'puppet:///modules/initiaze/config',
  }
  exec{ 'setenforce 0':
    path => '/usr/sbin',
  }
}
