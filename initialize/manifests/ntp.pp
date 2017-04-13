class initialize::ntp{
  package{ 'ntpdate':
    ensure => installed,
  }
  exec{ 'sync time':
    require => Package['ntpdate'],
    command => '/usr/sbin/ntpdate time.windows.com',
  }
  exec{ 'cron task':
    command => 'echo '*/5 * * * * /usr/sbin/ntpdate time.windows.com >/dev/null 2>&1' >>/var/spool/cron/root',
  }
}
