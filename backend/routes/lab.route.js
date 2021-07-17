const controller = require('../controllers/lab.controller')

module.exports = app => {
    app.get('/lab', controller.getAll) // List Data
    app.get('/lab/:id', controller.find) // Detail Data
    app.post('/lab', controller.store)  //Create Data
    app.patch('/lab/:id', controller.update) //Update Data
}