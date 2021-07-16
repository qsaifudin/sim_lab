const express = require('express')
const controller = require('../controllers/rumahsakit.controller')

module.exports = app => {
    app.get('/rumahsakit', controller.index)
    app.get('/rumahsakit/:id', controller.show)
    app.get('/rumahsakit/create', controller.create)
    app.post('/rumahsakit', controller.store)
    app.get('/rumahsakit/edit/:id', controller.edit)
    app.patch('/rumahsakit/edit/:id', controller.update)
}