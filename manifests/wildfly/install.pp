# This class install wildfly
#
# @summary Installs wildfly, should not be called directly
#
# @example
#   include ejbca::wildfly::install
class ejbca::wildfly::install {
  file {'/var/cache/wget':
    ensure => directory,
  }
  -> class { 'wildfly':
    version        => $ejbca::app_server_version,
    java_home      => '/usr',
    java_xms       => '2048m',
    java_xmx       => '2048m',
    java_opts      => '-Djava.net.preferIPv4Stack=true',
    install_source => $ejbca::app_server_download_url,
    dirname        => $ejbca::app_server_homedir,
  }
  -> file { 'jdbc_driver':
    ensure => file,
    source => $ejbca::app_server_jdbc_download_url,
    path   => "${ejbca::app_server_homedir}/standalone/deployments/mariadb-java-client.jar",
    group  => $ejbca::app_server_group,
    owner  => $ejbca::app_server_user,
  }
}
