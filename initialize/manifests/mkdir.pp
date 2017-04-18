class initialize::mkdir{
  file{ 'mkdir.sh':
    ensure => file,
    path => '/tmp/mkdir.sh',
    source => "puppet:///modules/initialize/mkdir.sh",
  }
  exec{'bash mkdir.sh':
    require => File['mkdir.sh'],
    cwd     => '/tmp',
    path => '/bin',
  }
}
