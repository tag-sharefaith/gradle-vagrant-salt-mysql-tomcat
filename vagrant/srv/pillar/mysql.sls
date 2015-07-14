# https://github.com/saltstack-formulas/mysql-formula/blob/master/pillar.example
mysql:
  server:
    root_password: ''
    user: mysql
    mysqld:
      # you can use either underscore or hyphen in param names
      bind-address: 0.0.0.0
      log_bin: /var/log/mysql/mysql-bin.log
      port: 3306

  database:
    - admin

  user:
    admin:
      host: '%'
      databases:
        - database: database
          grants: ['all privileges']