ARG ELASTIC_VERSION

FROM docker.elastic.co/beats/elastic-agent:${ELASTIC_VERSION}

# Ensure the 'state' directory exists and is owned by the 'elastic-agent' user,
# otherwise mounting a named volume in that location creates a directory owned
# by root:root which the 'elastic-agent' user isn't allowed to write to.
RUN mkdir state

# RUN mkdir -p /var/lib/docker/containers
# Verify the source path exists
# RUN ls -ld /var/lib/docker/containers

# RUN 
# Create the directory if it doesn't exist

# Restart the Docker service
# RUN sudo systemctl restart docker

# Verify Docker configuration
# RUN sudo cat /etc/docker/daemon.json

# Check firewall rules (if applicable)
# RUN sudo ufw status