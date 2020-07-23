const express = require('express');
const connection = require('../server/db.js');

const router = express.Router();

/* ----- GET all bottles ----- */

router.get('/',(req, res) =>{
    connection.query('SELECT * from repair', (err, results) => {
      if (err) {
        res.status(500).send('Erreur lors de la récupération des réparations');
      } else {
        res.status(200).json(results);
      }
    });
});

router.get('/:name', (req, res) => {
  const idPhones = req.params.name;
  connection.query("select phone.name, repair.name as repair from phone_repair join phone on phone.id = phone_repair.phone_id join repair on repair.id = phone_repair.repair_id WHERE phone.name = ? ", [idPhones], (err, results) => {
    if (err) {
      res.status(500).send(`Erreur lors de la récupération d'une réparation`);
    } 
    if (results.length === 0) {
      return res.status(404).send('Réparation non trouvée');
    } else {
      res.json(results);
    }
  })
});

module.exports = router;
