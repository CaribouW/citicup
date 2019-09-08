git submodule update --init --recursive --remote
bash bash/install.sh
# cp to the static
cp -r frontend-admin/networker/* server/citicup-frontend/networker
cp -r frontend-user/networker/* server/citicup-frontend/networker
cd server && bash bash/local_setup.sh && cd ..
