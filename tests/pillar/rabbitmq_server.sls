rabbitmq:
  server:
    enabled: true
    bind:
      address: 0.0.0.0
      port: 5672
    secret_key: rabbit_master_cookie
    memory:
      vm_high_watermark: 0.8
    admin:
      name: adminuser
      password: pwd
    plugins:
      - rabbitmq_management
    host:
      '/':
        enabled: true
        user: guest
        password: guest
        policies:
        - name: HA
          pattern: '^(?!amq\.).*'
          definition: '{"ha-mode": "all"}'

