class initialize::somepkg{
  package{ ['net-tools', 'lrzsz', 'sysstat']:
    ensure => installed,
  }
}
