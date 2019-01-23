#FROM fernandocunha/ubuntu-cunha:latest
FROM puppet-server-cunha:20190122

USER root
WORKDIR /root/

RUN wget https://apt.puppetlabs.com/puppet6-release-bionic.deb
RUN dpkg -i puppet6-release-bionic.deb
RUN apt update
RUN apt install puppetserver -y

COPY ./etc_default_puppetserver.txt /etc/default/puppetserver

RUN /opt/puppetlabs/bin/puppetserver ca setup

RUN systemctl start puppetserver
RUN systemctl enable puppetserver