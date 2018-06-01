node centos74_client {
  
  package { 'httpd':
    ensure => installed,
  }
  
  file { '/var/www/html/index.html':
    ensure  => file,
    content => "<h1>Hello World! Hostname ${ipaddress}</h1\n",
  }
  
  service { 'httpd':
     ensure  => running,
     enable => true,
   }
   
}

