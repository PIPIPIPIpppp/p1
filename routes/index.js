var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

let users = {
  bob: { password: 'password', email: 'example1@example.com' },
  alice: { password: 'foobar', email: 'example2@example.com' }
};

router.post('/login', async function (req, res, next) {
  if ('username' in req.body && 'password' in req.body) {

    if (req.body.username in users && users[req.body.username].password === req.body.password) {
        // valid a user
        req.session.user = users[req.body.username];
        console.log(req.body.username);
        res.json(req.session.user);
        res.sendStatus(200);
    } else {
        // invalid user
        res.sendStatus(401);
    }

} else {
    res.sendStatus(404);
}
});


module.exports = router;
