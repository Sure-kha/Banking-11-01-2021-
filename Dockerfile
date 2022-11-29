FROM node:16.14
EXPOSE 4200
RUN mkdir -p /app
WORKDIR /app
COPY package.json .
RUN npm install -g npm@8.11.0
RUN npm install --force
COPY . .
RUN mkdir /home/node/.npm-global
ENV PATH=/home/node/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

RUN npm install -g @angular/cli@13.2.6
CMD ["ng","serve","--host","0.0.0.0"]
