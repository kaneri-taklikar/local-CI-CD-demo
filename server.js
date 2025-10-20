const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send('<h1>HELLO  THIS IS MY FIRST CI/CD TASK!- Updated!</h1>');
});

app.listen(PORT, () => console.log(`🚀 Server running on port ${PORT}`));
