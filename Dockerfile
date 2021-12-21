FROM heroku/python

RUN apt-get update && \
    apt-get install -y curl git wget screen ca-certificates libcurl4 libjansson4 libgomp1 sudo
ADD entrypoint.sh /entrypoint.sh
RUN chmod 777 /run/screen
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
