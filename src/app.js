// Import required modules
const express = require('express');

// Create an Express application
const app = express();

// Define a route that sends "Hello, World!" as a response
app.get('/', (req, res) => {
  res.send('Hello, World!');
});

// Set the server to listen on port 3000
const PORT = 3000;
app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
