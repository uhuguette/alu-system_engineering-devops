# Ensure wp-config.php exists and is readable by Apache
file { '/var/www/html/wp-config.php':
  ensure => file,
  owner  => 'www-data',
  group  => 'www-data',
  mode   => '0644',
  source => '/tmp/wp-config.php',  # replace with a valid wp-config.php
}

# Ensure all files in /var/www/html have proper ownership and permissions
file { '/var/www/html':
  ensure  => directory,
  recurse => true,
  owner   => 'www-data',
  group   => 'www-data',
  mode    => '0755',
}
