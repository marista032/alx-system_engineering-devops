# This is a puppet script which the error 500 issue will be fix and then automate using Puppet 

$php_path = '/var/www/html/wp-settings.php'

exec { 'replace_line':
  command => "sed -i 's/phpp/php/g' ${php_path}",
  path    => ['/bin','/usr/bin']
}
