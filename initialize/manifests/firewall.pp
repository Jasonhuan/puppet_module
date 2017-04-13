class initialize::firewall{
  exec{ 'config firewall ssh':
    command => 'firewall-cmd --permanent --zone=public --add-rich-rule="rule family="ipv4" source address="0.0.0.0/24" port protocol="tcp" port="33822" accept"',
  }
  exec{ 'config firewall http':
    command => 'firewall-cmd --zone=public --add-port=80/tcp --permanent',
  }
  exec{ 'reload':
    before => Exec['config firewall ssh', 'config firewall http'],
    command => 'firewall-cmd --reload',
  }
}
