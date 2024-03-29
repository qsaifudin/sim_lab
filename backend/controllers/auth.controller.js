const db = require("../models")
const config = require("../config/auth.config")
const {
    user: User,
    role: Role,
    refreshToken: RefreshToken
} = db;

const jwt = require('jsonwebtoken');

module.exports = {
    cekLogin: (req, res) => {

        if (req.body.refreshTokenData === undefined) {
            return res.send({
                message: "token empty"
            })
        }
        RefreshToken.findOne({
                where: {
                    token: req.body.refreshTokenData
                }
            })
            .then((data) => {
                if (!data) {
                    return res.send({
                        message: "token not found"
                    })
                }
                res.status(200).json({
                    message: 'ok',
                    dd: data
                })
            })
            .catch((err) => {
                res.json({
                    message: err,
                    dd: 'dddd'
                })
            })
    },
    getUser: (req, res) => {
        let token = req.headers["token"];

        if (!token) {
            return res.status(403).send({
                message: "No token provided!"
            });
        }

        jwt.verify(token, config.secret, (err, decoded) => {
            if (err) {
                return catchError(err, res);
            }
            req.userId = decoded.id;
            User.findOne({
                    where: {
                        id: req.userId
                    }
                })
                .then(data => {
                    res.status(200).send(
                        data
                    )
                })
        });
    },
    signin: (req, res) => {
        if (req.body.username === undefined || req.body.username === undefined) {
            return res.status(404).json({
                message: "Field empty"
            })
        }
        User.findOne({
                where: {
                    username: req.body.username
                }
            })
            .then(async (user) => {
                if (!user) {
                    return res.status(404).json({
                        message: "User Not found."
                    })
                }

                if (req.body.password !== user.password) {
                    return res.status(401).json({
                        message: "Invalid Password!"
                    })
                }

                const token = jwt.sign({
                    id: user.id,
                    username: user.username
                }, config.secret, {
                    expiresIn: config.jwtExpiration
                })

                let refreshToken = await RefreshToken.createToken(user)
                // db.sequelize.query(`UPDATE users SET token = '${token}' WHERE id = '${user.id}'`, { type: db.QueryTypes.UPDATE });
                // User.update({ token: token }, {
                //     where: {
                //         id: 1
                //     }
                // })
                // .then(() => {
                user.getRoles().then(roles_arg => {
                        // res.setHeader('token', token)
                        // res.cookie('token', token)
                        // localStorage.setItem('token', token)
                        // localStorage.setItem('username', user.username)
                        res.status(200).json({
                            id: user.id,
                            username: user.username,
                            role: {
                                'id': roles_arg.id,
                                'role': roles_arg.name
                            },
                            accessToken: token,
                            // token_db: "-> " + user.token,
                            refreshToken: refreshToken,
                        })
                    })
                    // })
                    .catch(err => {
                        view.messageErr(err.message);
                    });

            })
            .catch(err => {
                res.status(500).json({
                    message: err.message
                })
            })

    },
    refreshToken: async (req, res) => {
        const {
            refreshToken: requestToken
        } = req.body;

        if (requestToken == null) {
            return res.status(403).json({
                message: "Refresh Token is required!"
            });
        }

        try {
            let refreshToken = await RefreshToken.findOne({
                where: {
                    token: requestToken
                }
            });

            console.log(refreshToken)

            if (!refreshToken) {
                res.status(403).json({
                    message: "Refresh token is not in database!"
                });
                return;
            }

            if (RefreshToken.verifyExpiration(refreshToken)) {
                RefreshToken.destroy({
                    where: {
                        id: refreshToken.id
                    }
                });

                res.status(403).json({
                    message: "Refresh token was expired. Please make a new signin request",
                });
                return;
            }

            const user = await refreshToken.getUser();
            let newAccessToken = jwt.sign({
                id: user.id
            }, config.secret, {
                expiresIn: config.jwtExpiration,
                // expiresIn: config.jwtExpiration,
            });

            return res.status(200).json({
                accessToken: newAccessToken,
                refreshToken: refreshToken.token,
            });
        } catch (err) {
            return res.status(500).json({
                message: err
            });
        }
    },

    logout: (req, res) => {
        RefreshToken.destroy({
            where: {
                token: req.body.refreshToken
            }
        }).then(() => {
            res.status(202).send({
                message: "logout"
            });
        });
    }
}