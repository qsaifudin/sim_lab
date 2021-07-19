const controller = require('../controllers/wilayah.controller')

module.exports = app => {
    app.get("/api/wilayah/provinsi/", controller.getAllProvinsi);
    app.get("/api/wilayah/provinsi/:id", controller.findProvinsi);
    app.get("/api/wilayah/kota", controller.getAllKota);
    app.get("/api/wilayah/kota/:id", controller.findKota);
    app.get("/api/wilayah/kecamatan", controller.getAllKecamatan);
    app.get("/api/wilayah/kecamatan/:id", controller.findKecamatan);
}