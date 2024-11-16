const mongoose = require('mongoose');

// Use the MONGODB_URI environment variable
const uri = process.env.MONGODB_URI;

// Connect to MongoDB Atlas using Mongoose
mongoose.connect(uri, { useNewUrlParser: true, useUnifiedTopology: true })
  .then(() => {
    console.log("Connected to MongoDB Atlas!");
  })
  .catch((err) => {
    console.error("Error connecting to MongoDB Atlas:", err);
  });
