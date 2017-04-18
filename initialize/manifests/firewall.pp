class initialize::firewall{
  exec{ 'config firewall http':
    command => 'firewall-cmd --permanent --zone=public --add-rich-rule="rule family="ipv4" source address="0.0.0.0/24" port protocol="tcp" port="80" accept"',
    path => '/usr/bin',
  }
  exec{ 'config firewall https':
    command => 'firewall-cmd --permanent --zone=public --add-rich-rule="rule family="ipv4" source address="0.0.0.0/24" port protocol="tcp" port="443" accept"',
    path => '/usr/bin',
  }
  exec{ 'reload':
    before => Exec['config firewall http', 'config firewall https'],
    command => 'firewall-cmd --reload',
    path => 'usr/bin',
  }
}
