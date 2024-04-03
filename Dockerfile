
#config file for an image 

#operating system
FROM ubuntu
# all updates of ubuntu inside image
RUN apt-get update
#installing curl inside the image
RUN apt-get install -y curl
#installing node 
RUN  curl -sL https://deb.nodesource.com/setup_19.x | bash -

RUN apt-get upgrade -y
RUN apt-get install -y nodejs

# copying all the files into image
COPY package.json package.json
COPY package-lock.json package-lock.json
COPY main.js main.js

# for installing all the node modules
RUN npm install 

# whenever this container will excute node main.js command will get exucuted.
ENTRYPOINT [ "node", "main.js" ]


