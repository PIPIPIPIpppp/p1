var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.post('/nihao.html', function(req, res, next) {
  var recived = req.body.bianliangmingzi;

  var xialakuang = req.body.leibie;
  console.log("recived: " + recived + " xialakuang: " + xialakuang);
  //Connect to the database
  req.pool.getConnection( function(err,connection) {
    if (err) {
      res.sendStatus(500);
      return;
    }

    var query ="";
    if(xialakuang === "brand"){
      query = `SELECT * FROM Shoes WHERE brand LIKE ?;`;
    }
    else if(xialakuang === "size"){
      query = `SELECT * FROM Shoes WHERE size LIKE ?;`;
    }
    else if(xialakuang === "style"){
      query = `SELECT * FROM Shoes WHERE style LIKE ?;`;
    }
    else if(xialakuang === "price"){
      //query = `SELECT * FROM Shoes WHERE price LIKE '%${recived}%';`;
      query = `SELECT * FROM Shoes WHERE price LIKE ?;`;
    }
    //sql injection可能//

    connection.query(query, [`%${recived}%`] ,function(err, rows, fields) {
      connection.release();
      if (err) {
        res.sendStatus(500);
        return;
      }
      res.json(rows);
    });
  });
});

module.exports = router;
