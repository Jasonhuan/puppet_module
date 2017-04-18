class initialize::ssh{
  file{ 'conf':
    path => '/etc/selinux/config'
    ensure => file,
    mode   => '0600',
    source => 'puppet:///modules/initiaze/config',
  }
  exec{ 'setenforce 0':
    path => '/usr/sbin',
  }
}
