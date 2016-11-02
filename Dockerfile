FROM kmallea/steamcmd


RUN mkdir /opt/steamcmd/7days &&\
        /opt/steamcmd/steamcmd.sh \
           +login anonymous \
           +force_install_dir 7days \
           +app_update 294420 validate \
           +quit

RUN cd /opt/steamcmd/7days
EXPOSE 26900
ENTRYPOINT /bin/bash
WORKDIR /opt/steamcmd/7days


