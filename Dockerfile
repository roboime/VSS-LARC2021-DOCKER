FROM ubuntu:18.04

# Dependencias
RUN apt-get update
RUN apt-get install git -y \
	nano \
	net-tools \
	iputils-ping
RUN git clone https://github.com/roboime/VSS_AI.git
RUN cd VSS_AI && git checkout erreinadefposskill && git pull
RUN chmod -R 777 ../VSS_AI
