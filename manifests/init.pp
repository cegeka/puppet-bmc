# Class: bmc
#
# This module manages bmc
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class bmc {

  include bmc::params

  package { $bmc::params::package:
    ensure => present
  }

}
