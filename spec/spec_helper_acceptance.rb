require 'beaker-rspec'
require 'beaker/puppet_install_helper'
require 'beaker/module_install_helper'

unless ENV['RS_PROVISION'] == 'no' || ENV['BEAKER_provision'] == 'no'
  run_puppet_install_helper
  install_module_on(hosts)
  install_module_dependencies_on(hosts)
end

RSpec.configure do |c|
  # Project root
  proj_root = File.expand_path(File.join(File.dirname(__FILE__), '..'))

  # Readable test descriptions
  c.formatter = :documentation

  # Configure all nodes in nodeset
  c.before :suite do
    # Install the module and its dependencies
    puppet_module_install(source: proj_root, module_name: 'ejbca')
    hosts.each do |host|
      on host, puppet('module', 'install', 'puppetlabs-stdlib -v 5.1.0'), acceptable_exit_codes: [0]
    end
  end
end
