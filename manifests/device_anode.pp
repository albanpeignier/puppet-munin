define munin::device_anode($ip_address = 'localhost', $extra_limits = []) {
  file { "/etc/munin/munin-conf.d/node-${name}.conf":
    content => template('munin/device.conf'),
    require => Package['munin']
  }
}
