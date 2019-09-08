cd server && docker-compose up -d && cd ..
cd server/citicup-admin/ && go build -o server && ./server && rm -rf server && cd ../..
