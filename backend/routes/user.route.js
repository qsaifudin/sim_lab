const {
    authJwt
} = require('../middleware/authJwt')
const controller = require('../controllers/user.controller')

module.exports = app => {
    app.use((req, res, next) => {
        res.header(
            "Access-Control-Allow-Headers",
            "x-access-token, Origin, Content-Type, Accept"
        )
        next()
    })

    app.get("/", controller.allAccess);

    app.get(
        '/page/superadmin',
        [authJwt.verifyToken, authJwt.authSuperAdmin],
        controller.superAdminBoard)
    app.get(
        '/page/admin',
        [authJwt.verifyToken, authJwt.authAdmin, ],
        controller.adminBoard)
    app.get(
        '/page/vendor',
        [authJwt.verifyToken, authJwt.authVendor],
        controller.vendorBoard)
    app.get(
        '/page/rs',
        [authJwt.verifyToken, authJwt.authRs],
        controller.rsBoard)
    app.get(
        '/page/lab',
        [authJwt.verifyToken, authJwt.authLab],
        controller.labBoard)
}