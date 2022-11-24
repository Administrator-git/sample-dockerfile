# sample-dockerfile

To configure the slave:

1. Take a VM
2. Install docker in the machine, if docker is not installed
3. open the docker service file "/lib/systemd/system/docker.service". Search for "ExecStart" and replace that line with the following.
   ExecStart=/usr/bin/dockerd -H tcp://0.0.0.0:4243 -H unix:///var/run/docker.sock
4. Reload and restart docker service
   sudo systemctl daemon-reload
   sudo service docker restart
5. Validate API by executing the following curl commands. Replace "localhost" with your host IP.
   curl http://localhost:4243/version
6.
