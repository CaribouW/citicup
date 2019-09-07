ssh-keygen -t rsa -b 4096 -C 'build@travis-ci.org' -f ./deploy_rsa
travis encrypt-file deploy_rsa --add
ssh-copy-id -i deploy_rsa.pub root@106.14.140.93

rm -f deploy_rsa deploy_rsa.pub
git add deploy_rsa.enc .travis.yml
