FROM rethinkdb:2.3.6
MAINTAINER zeekay

RUN apt update && apt install -y curl

COPY assets/db.sh /db.sh
COPY assets/proxy.sh /proxy.sh

RUN chmod +x /db.sh
RUN chmod +x /proxy.sh

ENTRYPOINT [ "/db.sh" ]
