FROM node:10.18.1-buster-slim

## Installing Cypress
RUN apt-get update && \
  apt-get -y install libgtk2.0-0 libgtk-3-0 libnotify-dev libgconf-2-4 libnss3 libxss1 libasound2 libxtst6 xauth xvfb nodejs && \
  npm install -g --unsafe-perm=true --allow-root cypress && echo export PATH="\
  :\
  /usr/local/rvm/bin:\
  /root/.yarn/bin:\
  /root/.config/yarn/global/node_modules/.bin:\
  $PATH" >> ~/.bashrc && \
  apt-get autoremove && \
  apt-get clean

ENTRYPOINT [ "sh" ]
