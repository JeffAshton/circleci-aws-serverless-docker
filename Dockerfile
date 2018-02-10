FROM circleci/node:6

RUN \
	sudo apt-get install -y awscli \
	&& sudo npm install -g serverless@1.26.0

ADD ./assume-role.sh /usr/bin/aws-assume-role
