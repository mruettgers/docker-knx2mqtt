FROM alpine AS builder

RUN apk -U --no-cache add git \
  && cd /tmp \
  && git clone --depth=1 https://github.com/mruettgers/knx-mqtt-bridge.git

FROM arm32v7/node:12-slim
MAINTAINER Michael Ruettgers <michael@ruettgers.eu>

#RUN mkdir /opt/knx2mqtt \
#  && cd /opt/knx2mqtt \
#  && npm install knx-mqtt-bridge

COPY --from=builder /tmp/knx-mqtt-bridge /opt/knx2mqtt

RUN cd /opt/knx2mqtt \
  && npm install

ENV KNX_MQTT_CONFIG=/config/config.yaml
COPY files/ /

#CMD [ "/opt/knx2mqtt/node_modules/.bin/knx-mqtt-bridge" ]

WORKDIR "/opt/knx2mqtt"

CMD [ "npm", "run", "start"]


