#!/usr/bin/env rspec

require 'spec_helper'

describe 'bmc' do

  context 'with operatingsystemrelease => 5.5' do
    let(:facts) { {
      :osfamily => 'RedHat',
      :operatingsystemrelease => '5.5'
    } }

    it { should contain_class('bmc::params') }

    it { should contain_package('OpenIPMI-tools').with_ensure('present') }
  end

  context 'with operatingsystemrelease => 6.5' do
    let(:facts) { {
      :osfamily => 'RedHat',
      :operatingsystemrelease => '6.5'
    } }

    it { should contain_class('bmc::params') }

    it { should contain_package('ipmitool').with_ensure('present') }
  end

end
