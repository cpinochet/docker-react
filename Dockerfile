FROM cpinochet/myubuntu:v0.6
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build
RUN bash tes.sh
# FROM nginx
# COPY --from=0 /app/build /usr/share/nginx/html

# FROM google/cloud-sdk:alpine
# WORKDIR '/app'
# COPY --from=0 /app/build /app
# COPY . .

# RUN gcloud auth activate-service-account --key-file llave.json
# RUN gcloud config set project hopeful-vim-285617
# RUN gcloud -q app deploy app.yaml --no-promote