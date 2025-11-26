const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send('QR Stream Service');
});

app.listen(port, () => {
  console.log(`QR Stream listening on port ${port}`);
});