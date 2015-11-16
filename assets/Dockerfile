#PREZ.TOOLS

# Pull base image.
FROM phusion/baseimage:0.9.17
MAINTAINER k33g_org <ph.charriere@gmail.com>

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

CMD ["/sbin/my_init"]

RUN apt-add-repository ppa:brightbox/ruby-ng &&\
  apt-get update  &&\
  apt-get -y upgrade &&\
  apt-get install -y git &&\
  apt-get install -y nano &&\ 
  apt-get install -y redis-server &&\
  apt-get install -y nodejs npm &&\
  apt-get install -y vim &&\
  apt-get install -y mc &&\
  apt-get install -y tmux &&\
  apt-get install -y ruby2.2 &&\
  apt-get install -y rubygems-integration &&\  
  apt-get install -y wget

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN sudo ln -s "$(which nodejs)" /usr/bin/node &&\
  npm install jspm -g &&\
  npm install babel-cli -g &&\
  npm install nodemon -g &&\
  npm install http-server -g &&\
  npm install bower -g &&\
  gem install teamocil &&\
  mkdir ~/.teamocil

RUN git clone https://github.com/krishnasrinivas/wetty &&\
  cd wetty &&\
  npm install

#Add user term
RUN useradd -d /home/term -m -s /bin/bash term
RUN echo 'term:term' | chpasswd

COPY console.yml root/.teamocil/console.yml
COPY tmux.conf root/.tmux.conf

COPY .bash_profile home/term/.bash_profile
COPY prez.yml home/term/.teamocil/prez.yml
COPY tmux.conf home/term/.tmux.conf
# AKN -> ssh keep alive
RUN mkdir home/term/.ssh
COPY ssh.config home/term/.ssh/config
RUN  chmod 600 home/term/.ssh/config

EXPOSE 9000
EXPOSE 3000

# Define working directory.
WORKDIR /src

# Define default command.
CMD ["bash"]
CMD tmux new-session -d "teamocil console" \; attach


