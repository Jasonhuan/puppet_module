class apache::config{
  file{ 'httpd.conf':
    path => '/etc/httpd/conf/httpd.conf'
    ensure => file,
    require => Class['apache::install'],
    source => "puppet:///modules/apache/httpd.conf",
  }
}
