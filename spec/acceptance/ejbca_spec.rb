require 'spec_helper_acceptance'

describe 'ejbca defintion' do
  context 'test setup' do
    it 'should work with no errors' do
      pp = <<-EOS
       notify {'hello world': }
      EOS

      apply_manifest(pp, :catch_failures => true)
    end
  end
end
