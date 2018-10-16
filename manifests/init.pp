# The is the main file for the EJBCA, should include all other class for installation.
#
# @summary The class calls all the other sub classes: install, config and service
#
# @example
#   include ejbca
class ejbca inherits ejbca::params {
  class {'ejbca::jboss': }
  -> class {'ejbca::install': }
  -> class {'ejbca::config': }
  -> class {'ejbca::service': }
}
