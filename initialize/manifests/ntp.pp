class initialize::ntp{
  package{ 'ntpdate':
    ensure => installed,
  }
  exec{ 'sync time':
    require => Package['ntpdate'],
    command => 'ntpdate time.windows.com > /dev/null 2>&1',
    path => '/usr/sbin',
  }
  cron { 'cron job':
  command => "/usr/sbin/ntpdate time.windows.com >/dev/null 2>&1",
  user    => root,
  minute  => '*/5',
  }
}
