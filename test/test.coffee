test = require '../lib'
exec = require('child_process').exec
os = require 'os'
describe 'test', ->
  it 'is a function', ->
    test.should.be.a.function
  it 'returns the correct mime type for package.json', (done) ->
    exec 'node bin/cli package.json', (err, stdout, stderr) ->
      stdout.should.be.exactly 'application/json' + os.EOL
      done()
