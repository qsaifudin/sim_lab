const { authJwt } = require('../middleware/authJwt')
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
        [authJwt.verifyToken, authJwt.isSuperAdmin],
        controller.superAdminBoard
    )
    app.get(
        '/page/admin',
        [authJwt.verifyToken, authJwt.isAdmin, authJwt.isSuperAdmin],
        controller.adminBoard
    )
    app.get(
        '/page/vendor',
        [authJwt.verifyToken, authJwt.isVendor],
        controller.vendorBoard
    )
    app.get(
        '/page/rs',
        [authJwt.verifyToken, authJwt.isRs],
        controller.rsBoard
    )
    app.get(
        '/page/lab',
        [authJwt.verifyToken, authJwt.isLab],
        controller.labBoard
    )
}