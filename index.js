const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send('Hola mundo');
});

// Nuevo endpoint para saludar a un nombre específico
app.get('/saludo/:nombre', (req, res) => {
  const nombre = req.params.nombre;
  res.send(`Hola, ${nombre}`);
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
