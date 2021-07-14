const controller = require('../controllers/wilayah.controller')

module.exports = app => {
    app.get("/provinsi", controller.getAllProvinsi);
    app.get("/provinsi/:id", controller.getProvinsi);
    app.get("/kota", controller.getAllKota);
    app.get("/kota/:id", controller.getKota);
    app.get("/kecamatan", controller.getAllKecamatan);
}