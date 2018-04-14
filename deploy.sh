sed -i -e "s|http://localhost:8080|https://vue-ui-auth-example.cfapps.io|g" src/auth.js
npm run build
cd dist
touch Staticfile
echo 'pushstate: enabled' > Staticfile
cf push vue-ui-auth-example --no-start
cf set-env vue-ui-auth-example FORCE_HTTPS true
cf start vue-ui-auth-example
