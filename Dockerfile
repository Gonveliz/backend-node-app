FROM node:14-alpine
"WORKDIR" /usr/src/app
COPY ["package.json" "package-lock.json*" "npm-shrinkwrap.json*" "./"]
npm install 
COPY . .
EXPOSE 3001
RUN chown -R nodes \
/usr/src/app
USER node
CMD [npm, "start]