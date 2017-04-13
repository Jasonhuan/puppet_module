class nginx{
  include nginx::install, nginx::service, nginx::config
}
