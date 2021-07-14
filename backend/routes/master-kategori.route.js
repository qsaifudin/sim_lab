const controller = require('../controllers/master-kategori.controller')

module.exports = app => {
    app.get("/master/kategoriRs", controller.getAll);
    app.get("/master/kategoriRs/:id", controller.find);
    app.post("/master/kategoriRs/create", controller.store);
    app.patch("/master/kategoriRs/edit/:id", controller.update);
}