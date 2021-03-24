FROM cpinochet/myubuntu:v0.6
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build
RUN bash tes.sh