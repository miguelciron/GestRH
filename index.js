const express = require('express');
const app = express();
const port = 300;

app.get('/', (req, res) => {
    res.send('Hello Word!!');
});

app.listen(port, () => {
    console.log(`Servidor rodando em http://localhost:${port}`);
});