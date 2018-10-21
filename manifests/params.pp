# Params class EJBCA
#
# @summary Params class EJBCA, should not be called directly
#
class ejbca::params {
  $manage_app_server = true
  $app_server = wildfly
  $app_server_version = '10.1.0'
  $app_server_download_url = "http://download.jboss.org/wildfly/${app_server_version}.Final/wildfly-${app_server_version}.Final.tar.gz"
}
