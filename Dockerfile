FROM davidsblog/node-mongo:latest
//определяем каталог
RUN mkdir -p /usr/src/app
//должен быть определен путь к каталогу, отсюда будут выполняться все комманды

//добавляем в наш каталог package.json
ADD ./package.json /usr/src/app/package.json
//устанавливаем пакет для работы с js
RUN npm install
WORKDIR /usr/src/app

//
ADD . /usr/src/app

ADD start.sh /usr/src/app/start.sh
RUN chmod +x /usr/src/app/start.sh
CMD "/usr/src/app/start.sh"
