require 'spec_helper'

describe 'scala', :type => :class do
  context "on a Debian OS" do
    let(:facts) do
      {
        :osfamily => 'Debian', 
      } 
    end

    it { should include_class('wget') }
    it { should contain_package('scala').with_ensure('installed') }
    it { should contain_package('typesafe-repo').with_ensure('installed') }
    it { should contain_package('typesafe-stack').with_ensure('installed') }
  end

  context 'running on CentOS' do
    let(:facts) { {:operatingsystem => 'CentOS'} }

    it { should contain_package('wget') }
  end

end
