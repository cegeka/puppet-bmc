#!/usr/bin/env rspec

require 'spec_helper'

describe 'bmc' do
  it { should contain_class 'bmc' }
end
