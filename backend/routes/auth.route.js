const controller = require('../controllers/auth.controller');

module.exports = (app) => {
    app.use((req, res, next) => {
        res.header(
            "Access-Control-Allow-Headers",
            "x-access-token, Origin, Content-Type, Accept"
        )
        next()
    })
    app.post('/api/auth/signin', controller.signin)
    app.post('/api/auth/refreshToken', controller.refreshToken)
    app.delete('/api/auth/logout', controller.logout)
    app.get('/api/auth/cek-login', controller.cekLogin)
    app.get('/api/auth/get-user', controller.getUser)
}