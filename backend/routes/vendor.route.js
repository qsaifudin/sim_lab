const controller = require('../controllers/vendor.controller')

module.exports = app => {
    app.get('/vendor', controller.index)
    app.get('/vendor/:id', controller.show)
    app.get('/vendor/create', controller.create)
    app.post('/vendor', controller.store)
    app.get('/vendor/edit/:id', controller.edit)
    app.patch('/vendor/edit/:id', controller.update)
}