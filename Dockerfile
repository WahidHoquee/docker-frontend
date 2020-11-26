########## BUILD PHASE @@@@@@@@@@@

# 'as' is used for naming this phase. Each FROM import is a seperate phase. 
FROM node:alpine as builder 

WORKDIR '/app'

COPY package.json .

RUN npm install

COPY . .

RUN npm run build

##After executing the upper command a 'build' folder will be created in the WORKDIR. -> /app/build

########## RUN PHASE @@@@@@@@@@@

# New Phase. Each FROM terminates a block
FROM nginx

# To copy build folders of the builder's container to this nginx container
# COPY --from=PHASE_NAME FROM_DIRECTORY _NGINX_DEFAULT_DIRECTORY -> To serve static contents we have to store data in this directory -> nginx rules

COPY --from=builder /app/build /usr/share/nginx/html


#Nginx deafult startup command is set with the baseImage already. We dont need to overwrite that.

# To run the nginx container we have to do port mapping. Default source port of nginx is 80
# docker run -p 3000:80