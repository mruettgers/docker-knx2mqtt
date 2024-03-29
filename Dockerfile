FROM alpine AS builder

RUN apk -U --no-cache add git \
  && cd /tmp \
  && git clone --depth=1 https://github.com/pakerfeldt/knx-mqtt-bridge.git

FROM node:lts-alpine
MAINTAINER Michael Ruettgers <michael@ruettgers.eu>

COPY --from=builder /tmp/knx-mqtt-bridge /opt/knx2mqtt

RUN cd /opt/knx2mqtt \
  && npm install


WORKDIR "/opt/knx2mqtt"

CMD [ "npm", "run", "start"]
