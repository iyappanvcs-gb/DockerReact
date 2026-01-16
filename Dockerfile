#Base Image: Consider the node js as a base image
FROM node:19-alpine
#working directory of docker image.
WORKDIR /app
#copy pakcage.json file intp app dir
#Source: it is current dir, so we will directly provide the file name.
#Dest: it is the . since its working dir /app.
#Simply we can say: Take package.json file from our project dir and put it into the docker image working dir /app.
COPY package.json .
#npm install
RUN npm install
#Copy all other depencies or files from current dir to working directory(docker image dir).
#so both we are mentionting as dot(.)
COPY . .
#port expose.
#Defining on which port the app is configured and using that the other use can run.
EXPOSE 5173
#run the code
CMD [ "npm","run","dev" ]
