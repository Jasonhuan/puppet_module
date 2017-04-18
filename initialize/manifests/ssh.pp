class initialize::ssh{
  file{ 'sshd_config':
    path => '/etc/ssh/sshd_config',
    ensure => file,
    source => 'puppet:///modules/initialize/sshd_config',
    notify => Service['sshd'],
  }

  service{ 'sshd':
    ensure => 'running',
    enable => true,
    subscribe => File['sshd_config'],
  }
}
