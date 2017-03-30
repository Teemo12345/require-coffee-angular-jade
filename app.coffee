express = require 'express'
app = express()
app.use express.static 'public'
app.set 'views',__dirname+"/views/"
app.set 'view engine','jade'
app.get '/',(req,res)->
  file = req.url.replace(/^\//,'').split('/')[0]
  file = if file then file else 'index'
  res.render file
port = 9100
app.listen port
console.log "http://localhost:"+port