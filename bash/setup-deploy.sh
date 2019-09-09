git submodule update --init --recursive --remote

# cp to the static
mv frontend-user/networker/* server/citicup-frontend/networker
mv frontend-admin/networker/* server/citicup-frontend/networker
ssh root@106.14.140.93 StrictHostKeyChecking=no 'rm -rf citicup/citicup-frontend/networker/*'

cd server && bash bash/local_setup.sh
ssh root@106.14.140.93 StrictHostKeyChecking=no 'cd citicup && bash setup.sh'
