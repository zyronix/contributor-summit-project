require 'spec_helper'

describe 'ejbca' do
  on_supported_os.each do |os, os_facts|
    context "Run EJBCA on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }
    end
  end
end
