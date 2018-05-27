node centos74_client {
  file {'/root/README':
    ensure  => file,
    content => 'blah',
    owner   => 'root',
  }
}

