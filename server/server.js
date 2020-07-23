require('dotenv').config();
const express = require('express');
const app = express();
const connection = require('./db.js');
const cors = require('cors');
const bcrypt = require('bcrypt');


/*----import routes------*/

const phones = require('../routes/phones.js');
const repairs = require('../routes/repairs.js')
const brands = require('../routes/brands.js')


app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(cors())


app.listen(process.env.PORT, (err) => {
  if (err) {
    throw new Error('Something bad happened...');
  }
  console.log(`Server is listening on ${process.env.PORT}`);
});
 
app.get('/', (req, res) =>{
  res.status(200).json('hello ben_phone');
});


app.use('/brands', brands);
app.use('/phones', phones);
app.use('/repairs', repairs);

