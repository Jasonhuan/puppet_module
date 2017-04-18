class initialize{
  include initialize::firewall, initialize::limits,initialize::mkdir, initialize::ntp, initialize::selinux, initialize::somepkg, initialize::ssh, initialize::yum
}
