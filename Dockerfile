FROM maven:3.6.3-adoptopenjdk-8

RUN apt-get update && apt-get install -y \
        rsync \
        python3-pip && \
    rm -rf /var/lib/apt/lists/*

RUN python3 -m pip install ansible \
        boto \
        boto3

RUN mkdir -p /etc/ansible
RUN echo "localhost" > /etc/ansible/hosts
RUN export PATH=$PATH:/root/.local/bin
