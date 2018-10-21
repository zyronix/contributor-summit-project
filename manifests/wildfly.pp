# This class manages one possible application service: wildfly
#
# @summary Manages the wildfly application server, should not be called directly
#
class ejbca::wildfly {
  class {'ejbca::wildfly::config': }
  -> class {'ejbca::wildfly::install': }
  -> class {'ejbca::wildfly::service': }
}
