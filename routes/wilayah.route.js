const controller = require('../controllers/wilayah.controller')

module.exports = app => {
    app.get("/provinsi", controller.getAllProvinsi);
    app.get("/provinsi/:id_provinsi", controller.getProvinsi);
    app.get("/kabupaten", controller.getAllKabupaten);
    app.get("/kecamatan", controller.getAllKecamatan);
}