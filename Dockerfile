FROM davidsblog/node-mongo:latest
#определяем каталог
RUN mkdir -p /usr/src/app
#должен быть определен путь к каталогу, отсюда будут выполняться все комманды
WORKDIR /usr/src/app

#добавляем в наш каталог package.json
ADD ./package.json /usr/src/app/package.json
#устанавливаем пакет для работы с js
RUN npm install


#переносим все наши сорцы в наш каталог
ADD . /usr/src/app

#добавляем 
ADD start.sh /usr/src/app/start.sh
#RUN chmod +x /usr/src/app/start.sh
CMD "/usr/src/app/start.sh"
