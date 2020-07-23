const express = require('express');
const connection = require('../server/db.js');

const router = express.Router();

/* ----- GET all bottles ----- */

router.get('/', (req, res) => {
  connection.query('SELECT * from phone', (err, results) => {
    if (err) {
      res.status(500);
    } else {
      res.status(200).json(results);
    }
  });
});

router.get('/:phoneId/repairs', (req, res) => {
  const { phoneId } = req.params;
  connection.query('SELECT * from repair JOIN phone_repair ON repair.id=phone_repair.repair_id where phone_repair.phone_id = ?', [phoneId], (err, results) => {
    if (err) {
      res.status(500);
    } else {
      res.status(200).json(results);
    }
  });
});

module.exports = router;