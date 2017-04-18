class initialize::somepkg{
  package{ ['net-tools', 'lrzsz', 'sysstat', 'vim', 'bash-completion']:
    require => Class['initialize::yum'],
    ensure => installed,
  }
}
