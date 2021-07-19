const controller = require('../controllers/kategoriRs.controller')

module.exports = app => {
    app.get("/api/kategoriRs", controller.getAll);
    app.get("/api/kategoriRs/:id", controller.find);
    app.post("/api/kategoriRs", controller.store);
    app.patch("/api/kategoriRs/:id", controller.update);
}