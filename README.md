ansible-fedora-saio
===================

Swift all in one playbook
-------------------------

1. Provide a running RHEL, CentOS or Fedora instance with key-based SSH authentication. Ensure that the following command
   works without providing a password:

    ssh -l username IP_address

2. Apply the SAIO playbook:

    ansible-playbook -i "IP_address," -u username saio.yaml

You can change users.conf in advance if you want to use different users and passwords.

3. Login and verify that the following command works:

    swift -U test:tester -K testing -A http://127.0.0.1:8080/auth/v1.0 list


statsd/Graphite/Grafana playbook
--------------------------------

1. Apply the SAIO playbook:

    ansible-playbook -i "IP_address," -u username statsd.yaml

2. You can access Grafana on port 3000.

3. There is an example Grafana dashboard available at

    http://<IP address>:3000/dashboard/db/proxy


ssbench playbook
----------------

1. Same as step 1 above.

2. Apply the SAIO playbook:

    ansible-playbook -i "<IP address>," fedora-ssbench.yaml

3. Login and run the sample scenario:

    ssbench-master run-scenario -f ssbench_small_scenario.json.json --workers 10 \
    -A http://<SAIO IP address>:8080/auth/v1.0 -U test:tester -K testing
