module.exports = {
  "injectChanges": "true",
  "files": [ "./*.html", "./dist/riot/*.js", "./dist/css/*.css" ],
  "watchOptions": { "ignored": "node_modules" },
  "server": { "baseDir": "./" }
};
