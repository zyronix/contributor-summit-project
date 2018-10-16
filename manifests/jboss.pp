# This class manages one possible application service: JBoss
#
# @summary Manages the JBoss application server, should not be called directly
#
class ejbca::jboss {
  class {'ejbca::jboss::config': }
  -> class {'ejbca::jboss::install': }
  -> class {'ejbca::jboss::service': }
}
