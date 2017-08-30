var express = require('express');
var app = express();

app.get('/', function(req,res){
console.log('App is working');
});

app.listen(3000);
