echo '\n==> Cleaning system created files'
find . -iname '.DS_Store' -delete
find . -iname 'Icon*' -delete

echo '\n==> Instaling NodeJS and Bower dependencies'
yarn install

echo '\n==> Generating JavaScript'
yarn run js

echo '\n==> Copying Font-Awesome font files to assets/'
yarn run fonts

echo '\n==> Generating the site at _site/'
JEKYLL_ENV=production bundle exec jekyll build

echo '\n==> Syncing with the remote sever'
aws s3 sync _site s3://tatianasb.ru --profile tatiana --delete
