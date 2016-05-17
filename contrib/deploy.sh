echo '\n==> Instaling NodeJS and Bower dependencies'
npm install

echo '\n==> Generating JavaScript'
npm run js

echo '\n==> Copying Font-Awesome font files to assets/'
npm run fonts

echo '\n==> Cleaning system created files'
./contrib/clean.sh

echo '\n==> Generating the site at _site/'
JEKYLL_ENV=production bundle exec jekyll build

echo '\n==> Syncing with the remote sever'
rsync -crvz --delete _site/ $TATIANASBRU
