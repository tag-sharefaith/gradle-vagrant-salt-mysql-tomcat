# https://github.com/saltstack-formulas/tomcat-formula/blob/master/pillar.example
tomcat:
    version: 7
    security: 'no'
    manager:
         user: tomcat
         passwd: tomcat
         
java:
    Xmx: 1G
    MaxPermSize: 256m