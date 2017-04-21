var express = require('express')
var app = express()

app.get('/', function (req, res) {
  console.log(req.method, 'at', new Date().toISOString())
  res.send('<h1>Hello World from Docker!</h1>Running node '+process.version)
})

app.listen(3000, function () {
  console.log('Docker app listening on port 3000! Running node', process.version)
})
