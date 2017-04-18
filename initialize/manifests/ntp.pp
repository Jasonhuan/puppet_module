class initialize::ntp{
  package{ 'ntpdate':
    ensure => installed,
  }
  exec{ 'sync time':
    require => Package['ntpdate'],
    command => 'ntpdate time.windows.com > /dev/null 2>&1',
    path => '/usr/sbin',
  }
  exec{ 'cron task':
    require => Package['ntpdate'],
    command => 'echo "*/5 * * * * /usr/sbin/ntpdate time.windows.com >/dev/null 2>&1" >>/var/spool/cron/root',
    path => '/usr/bin',
  }
}
