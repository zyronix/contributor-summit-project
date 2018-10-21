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
  }
}
