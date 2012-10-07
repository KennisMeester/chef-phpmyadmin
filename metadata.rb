maintainer       "Panagiotis Papadomitsos"
maintainer_email "pj@ezgr.net"
license          "Apache Public License 2.0"
description      "Installs/Configures PHPMyAdmin"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.0.0"

depends "php"

suggests "nginx"
suggests "percona"
suggests "apache2"

%w{ ubuntu debian redhat fedora centos }.each do |os|
  supports os
end

attribute "phpmyadmin/version",
  :display_name => "PHPMyAdmin version",
  :description => "The desired PMA version",
  :default => "3.5.2.2"

attribute "phpmyadmin/checksum",
  :display_name => "PHPMyAdmin archive checksum",
  :description => "The sha256 checksum of the PMA desired version",
  :default => "eb00856d167ff7027e5e5ef4a88c4013f7b8bb598eea9789a12edf265a960921"

attribute "phpmyadmin/mirror",
  :display_name => "PHPMyAdmin download mirror",
  :description => "The desired PMA download mirror",
  :default => "http://netcologne.dl.sourceforge.net/project/phpmyadmin/phpMyAdmin"

attribute "phpmyadmin/fpm",
  :display_name => "PHPMyAdmin FPM instance",
  :description => "Enables the PMA FPM instance for serving via NGINX",
  :default => true

attribute "phpmyadmin/home",
  :display_name => "PHPMyAdmin home",
  :description => "The desired PMA installation home",
  :default => "/opt/phpmyadmin"

attribute "phpmyadmin/user",
  :display_name => "PHPMyAdmin user",
  :description => "The user PMA runs as",
  :default => "phpmyadmin"

attribute "phpmyadmin/group",
  :display_name => "PHPMyAdmin group",
  :description => "The group PMA runs as",
  :default => "phpmyadmin"

attribute "phpmyadmin/socket",
  :display_name => "PHPMyAdmin FPM socket",
  :description => "The socket that FPM will be exposing for PMA",
  :default => "/tmp/phpmyadmin.sock"

attribute "phpmyadmin/blowfish_secret",
  :display_name => "PHPMyAdmin blowfish secret",
  :description => "The PMA blowfish secret",
  :default => "10684aa5cd1ccf0a7fe82c3b4e7102bb"

attribute "phpmyadmin/upload_dir",
  :display_name => "PHPMyAdmin upload directory",
  :description => "The directory PMA will be using for uploads",
  :default => "/var/lib/php/uploads"

attribute "phpmyadmin/save_dir",
  :display_name => "PHPMyAdmin save directory",
  :description => "The directory PMA will be using for file saves",
  :default => "/var/lib/php/uploads"

attribute "phpmyadmin/maxrows",
  :display_name => "PHPMyAdmin maximum rows",
  :description => "The maximum rows PMA shall display in a table view",
  :default => 100

attribute "phpmyadmin/protect_binary",
  :display_name => "PHPMyAdmin binary field protection",
  :description => "Define the binary field protection PMA will be using",
  :default => "blob"

attribute "phpmyadmin/default_lang",
  :display_name => "PHPMyAdmin default language",
  :description => "The default language PMA will be using",
  :default => "en"

attribute "phpmyadmin/query_history",
  :display_name => "PHPMyAdmin query history",
  :description => "Enable or disable the Javascript query history",
  :default => true

attribute "phpmyadmin/query_history_size",
  :display_name => "PHPMyAdmin query history size",
  :description => "Set the maximum size of the Javascript query history",
  :default => 100
