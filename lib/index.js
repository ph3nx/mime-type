var mime = require('mime');
var pwd = process.env.PWD;
var filename = process.argv[2];

module.exports = function(){
  return mime.lookup(filename);
};
