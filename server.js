const express = require('express')
const app = express()
const port = 5500
const path = require('path');

app.use(express.static('luma-shop'))

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})