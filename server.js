'use strict';

const express = require('express');

// Constants
const PORT = 6000;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/test', (req, res) => {
  res.send('<h2 style="color: red"> Unimity Assessment Output<h2>');
});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
