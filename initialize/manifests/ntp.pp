class initialize::ntp{
  package{ 'ntpdate':
    ensure => installed,
  }
  exec{ 'sync time':
    require => Package['ntpdate'],
    command => 'ntpdate time.windows.com || ntpdate time.nist.gov',
    path => '/usr/sbin',
  }
  exec{ 'cron task':
    require => Package['ntpdate'],
    command => 'echo "*/5 * * * * /usr/sbin/ntpdate time.windows.com" >>/var/spool/cron/root',
    path => '/usr/bin',
  }
}
