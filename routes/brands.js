const express = require('express');
const connection = require('../server/db.js');

const router = express.Router();

/* ----- GET all bottles ----- */

router.get('/', (req, res) => {
  connection.query('SELECT * from brand', (err, results) => {
    if (err) {
      res.status(500);
    } else {
      res.status(200).json(results);
    }
  });
});

router.get('/:brandId/phones', (req, res) => {
  const { brandId } = req.params;
  connection.query('SELECT * from phone where brand_id = ?', [brandId], (err, results) => {
    if (err) {
      res.status(500);
    } else {
      res.status(200).json(results);
    }
  });
});

module.exports = router;