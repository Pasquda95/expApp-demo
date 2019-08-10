FROM node:latest

RUN git clone https://github.com/Pasquda95/expApp-demo.git app

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

RUN npm install -y
RUN npm install -g @angular/cli@8.1.0 -y 

CMD ng serve --host 0.0.0.0 --port 4200
