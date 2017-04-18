class initialize::mkdir{
  file{ 'mkdir.sh':
    ensure => file,
    path => '/tmp/mkdir.sh',
    source => "puppet:///modules/initialize/mkdir.sh",
  }
  exec{'make some dirs':
    require => File['mkdir.sh'],
    command => '/bin/bash /tmp/mkdir.sh',
  }
}
