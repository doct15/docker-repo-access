FROM node:4.2.3
EXPOSE 8080

# Add the source code
RUN mkdir app
WORKDIR app
COPY . .

# Update NPM
#RUN npm install -g npm --silent

# Install NPM + Bower dependencies
#RUN npm install -g bower --silent
#RUN bower install --allow-root --force-latest --silent
RUN git ls-remote --tags --heads git@github.com:Distelli/node-k8s.git

#RUN npm set progress=false
#RUN npm install --silent
#RUN npm install -g grunt --silent
#RUN npm install -g grunt-cli --silent

# Build
#RUN grunt build --force

# Move into compiled folder
#WORKDIR /app/dist/server
#RUN pwd

#ENV PORT 8080

# Initialize the server
CMD ["/bin/bash"]
