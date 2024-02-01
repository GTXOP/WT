const express = require('express');
const bodyParser = require('body-parser');
const path = require('path');  // Import the 'path' module
const app = express();
const PORT = 8800;

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

// In-memory user data (replace this with a database in production)
const users = [
  { username: 'user1', password: 'password1' },
  { username: 'user2', password: 'password2' },
];

// Define a route for the root path
app.get('/', (req, res) => {
  // Send the HTML file as the response
  res.sendFile(path.join(__dirname, 'index.html'));
});

app.post('/login', (req, res) => {
  const { username, password } = req.body;

  // Check if the user exists in the in-memory storage
  const user = users.find(u => u.username === username && u.password === password);

  if (user) {
    res.send('Login successful');
  } else {
    res.status(401).send('Invalid credentials');
  }
});

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
