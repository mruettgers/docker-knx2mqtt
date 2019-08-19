FROM arm32v7/node:12-slim
MAINTAINER Michael Ruettgers <michael@ruettgers.eu>

RUN mkdir /opt/knx2mqtt \
  && cd /opt/knx2mqtt \
  && npm install knx-mqtt-bridge

ENV KNX_MQTT_CONFIG=/config/config.yaml
COPY files/ /

CMD [ "/opt/knx2mqtt/node_modules/.bin/knx-mqtt-bridge" ]


