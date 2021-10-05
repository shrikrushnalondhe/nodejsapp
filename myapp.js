'use strict';

const express = require('express');

// Constants
const PORT = 3000;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
  res.send('This is my Sample nodejs page!');
});

app.listen(PORT, HOST);
console.log(`Running at http://${HOST}:${PORT}`);
