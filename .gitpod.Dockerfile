FROM gitpod/workspace-full:latest

RUN bash -c ". .nvm/nvm.sh && nvm install 14 && nvm use 14 && nvm alias default 14"

RUN echo "nvm use default &>/dev/null" >> ~/.bashrc.d/51-nvm-fix

RUN npm install npm@7 
RUN mv node_modules/npm /usr/local/lib/node_modules/npm
RUN rm -rf /usr/local/lib/node_modules/npm
