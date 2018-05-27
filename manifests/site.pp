node centos74_client {
  
  package {'httpd':
    ensure => installed,
  }
  
  file {'/var/www/html/index.html':
    ensure  => file,
    content => '<h1>Hello World!</h1',
  }
  
  service {'httpd':
     ensure  => running,
     enabled => true,
   }
   
}

