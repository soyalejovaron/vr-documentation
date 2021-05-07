const {Router} = require('express');
const indexCtrl = require('../controllers/index.controller');
const router = Router();

const {renderIndex,renderAbout} = require('../controllers/index.controller');

router.get('/',renderIndex);
router.get('/about',renderAbout);

module.exports = router;