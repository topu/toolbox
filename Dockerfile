FROM ubuntu:16.04

ADD bootstrap-toolbox.sh /usr/local/bin/
RUN chmod u+x /usr/local/bin/bootstrap-toolbox.sh && bootstrap-toolbox.sh

CMD ["zsh"]