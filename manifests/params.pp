class bmc::params {

  case $::osfamily {
    'RedHat', 'CentOS': {
      case $::operatingsystemrelease {
        /^5./: {
          $package = 'OpenIPMI-tools'
        }
        /^6./: {
          $package = 'ipmitool'
        }
        default: {
          fail("Class[bmc::params]: operatingsystemrelease ${::operatingsystemrelease} is not supported")
        }
      }
    }
    default: {
      fail("Class[bmc::params]: osfamily ${::osfamily} is not supported")
    }
  }

}
