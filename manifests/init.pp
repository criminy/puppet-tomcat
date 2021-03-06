/*

== Class: tomcat

Installs tomcat using the default version providing by distributions.

Example usage:

  include tomcat

*/
class tomcat {
  case $operatingsystem {
    RedHat,CentOS: { include tomcat::redhat }
    Debian,Ubuntu: { include tomcat::debian }
    default      : { notice "Unsupported operatingsystem ${operatingsystem}" }
  }
}
