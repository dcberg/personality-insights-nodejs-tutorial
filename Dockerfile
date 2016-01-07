
FROM registry.ng.bluemix.net/ibmnode:latest
#COPY <public_key_file_name> /root/.ssh/authorized_keys
COPY ./ /opt/node
WORKDIR /opt/node
RUN npm install -d --production
EXPOSE 8000 22
CMD ["node", "/opt/node/app.js"]
