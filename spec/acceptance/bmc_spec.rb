require 'spec_helper_acceptance'

describe 'bmc' do
  describe 'running puppet code' do
    it 'should work with no errors' do
      pp = <<-EOS
        include yum
        include stdlib
        include stdlib::stages
        include profile::package_management

        Yum::Repo <| title == 'proliantsupportpack' |>

        class { 'bmc': }
      EOS

      # Run it twice and test for idempotency
      apply_manifest(pp, :catch_failures => true)
      apply_manifest(pp, :catch_changes => true)
    end
    describe package('ipmitool') do
      it { should be_installed }
    end
  end
end
