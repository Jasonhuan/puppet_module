class initialize::selinux{
  exec{ 'turn down selinux':
    command => 'sed -i "s#SELINUX=enforcing#SELINUX=disabled#g" /etc/selinux/config && setenforce 0'
    path => '/usr/bin',
  }
}
