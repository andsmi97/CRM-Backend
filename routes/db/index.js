const express = require('express');

const router = express.Router();
const dbController = require('../../controllers/db');

router.get('/:table/:idname/:idvalue', dbController.selectOne);
router.get('/:table', dbController.selectMany);
router.post('/:table', dbController.selectManyWithAlias);
router.post('/', dbController.insert);
router.delete('/', dbController.remove);
router.put('/', dbController.update);
router.post('/filter', dbController.filter);

module.exports = router;
