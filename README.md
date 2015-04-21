ansible-fedora-saio
===================

Swift all in one playbook
-------------------------

1. Provide a running Fedora 21 instance with key-based SSH authentication. Ensure that the following command
   works without providing a password:

    ssh -l fedora <IP address>

2. Apply the SAIO playbook:

    ansible-playbook -i '<IP address>,' fedora-saio.yaml

3. Login and verify that the following command works:

    swift -U test:tester -K test -A http://127.0.0.1:8080/auth/v1.0 list

4. You can access the Graphite instance on port 80 in your browser.

5. There is also an example Graphite overview available at

    http://<IP address>/content/graphite_overview.html

ssbench playbook
----------------

1. Same as step 1 above.

2. Apply the SAIO playbook:

    ansible-playbook -i '<IP address>,' fedora-ssbench.yaml

3. Login and run the sample scenario:

    ssbench-master run-scenario -f ssbench_small_scenario.json.json --workers 10 \
    -A http://<SAIO IP address>:8080/auth/v1.0 -U test:tester -K testing
