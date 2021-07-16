const controller = require('../controllers/lab.controller')

module.exports = app => {
    app.get('/lab', controller.index)
    app.get('/lab/:id', controller.show)
    app.get('/lab/create', controller.create)
    app.post('/lab', controller.store)
    app.get('/lab/edit/:id', controller.edit)
    app.patch('/lab/edit/:id', controller.update)
}