const express = require('express');
const app = express();
const port = 3000;
const {resolve} = require('path');
const index = resolve('../frontend/index.html');

app.get('/', (req, res) => res.sendFile(index));

app.listen(port, () => console.log(`Example app listening at http://localhost:${port}`));