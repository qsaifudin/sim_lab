const controller = require('../controllers/rumahsakit.controller')

module.exports = app => {
    app.get('/rumahsakit', controller.getAll) // List Data
    app.get('/rumahsakit/:id', controller.find) // Detail Data
    app.post('/rumahsakit', controller.store) // Create Data
    app.patch('/rumahsakit/:id', controller.update) // Update Data
}