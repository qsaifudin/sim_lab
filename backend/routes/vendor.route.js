const controller = require('../controllers/vendor.controller')

module.exports = app => {
    app.get('/vendor', controller.getAll) // List Data
    app.get('/vendor/:id', controller.find) // Detail Data
    app.post('/vendor', controller.store) // Create Data
    app.patch('/vendor/:id', controller.update) // Update Data
}