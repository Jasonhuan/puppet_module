class redis::config{
  file{ 'redis.conf':
    path => '/etc/redis.conf',
    ensure => file,
    require => Class['redis::install'],
    source => "puppet:///modules/redis/redis.conf",
  }
}
