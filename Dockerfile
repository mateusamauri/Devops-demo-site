#Imagem base oficial no Nginx
FROM nginx:alpine

#Remove a página padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

#Copia os arquivos do site para a pasta pública do Nginx
COPY  . /usr/share/nginx/html

#Expõe a porta padrão no Nginx
EXPOSE 80