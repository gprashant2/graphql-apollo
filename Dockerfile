FROM centos:7
RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash - && yum -y install nodejs
RUN mkdir graphql-server-example && cd graphql-server-example && npm init --yes && npm install apollo-server graphql
WORKDIR graphql-server-example
COPY index.js .
EXPOSE 4000/tcp
CMD node index.js
