const express = require('express')
const app = express()
const port = 3000
const path = require('path');

app.use(express.static('luma-shop'))

/*app.get('/', (req, res) => {
    console.log(path.join(__dirname, 'index.html'));
  res.sendFile(path.join(__dirname, 'index.html'))
})*/

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})