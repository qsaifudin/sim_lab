const controller = require('../controllers/master-kategori.controller')

module.exports = app => {
    app.get("/m/kategoriRs", controller.getAll);
    app.get("/m/kategoriRs/:id", controller.find);
    app.post("/m/kategoriRs/create", controller.store);
    app.patch("/m/kategoriRs/edit/:id", controller.update);
}