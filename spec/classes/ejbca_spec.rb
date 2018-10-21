require 'spec_helper'

describe 'ejbca' do
  on_supported_os.each do |os, os_facts|
    context "Run EJBCA on #{os}" do
      let(:facts) do
        os_facts.merge(initsystem: 'systemd')
      end

      it {
        is_expected.to compile

        is_expected.to contain_class('wildfly').with(
          'version'        => '10.1.0',
          'install_source' => 'http://download.jboss.org/wildfly/10.1.0.Final/wildfly-10.1.0.Final.tar.gz',
          'java_home'      => '/usr',
        )
      }
    end
  end
end
