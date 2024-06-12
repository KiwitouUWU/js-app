const express = require('express');
const app = express();
const router = express.Router();

const path = __dirname + '/views/';
const port = 3000;

router.get('/hello', function(req,res){
    res.sendFile(path + 'hello.html');
});

app.use(express.static(path));
app.use('/', router);

app.listen(port, function () {
  console.log('App listening on port ', port)
})