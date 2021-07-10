const db = require("../models")
const config = require("../config/auth.config")
const User = db.user

const jwt = require('jsonwebtoken');
const jwtBlacklist = require('jwt-blacklist');

module.exports = {
    getUser: (req, res) => {

    },
    signin: (req, res) => {
        User.findOne({
            where: {
                username: req.body.username
            }
        })
            .then((user) => {
                if (!user) {
                    return res.status(404).send({ message: "User Not found." })
                }

                if (req.body.password !== user.password) {
                    return res.status(401).send({
                        message: "Invalid Password!"
                    })
                }

                const token = jwt.sign({ id: user.id, username: user.username }, config.secret, {
                    expiresIn: 86400
                })

                db.sequelize.query(`UPDATE users SET token = '${token}' WHERE id = '${user.id}'`, { type: db.QueryTypes.UPDATE });

                user.getRoles().then(roles_arg => {
                    // res.setHeader('token', token)
                    res.cookie('token', token)
                    res.status(200).send({
                        id: user.id,
                        username: user.username,
                        name: "-> " + user.name,
                        role: { 'id': roles_arg.id, 'role': roles_arg.name },
                        accessToken: token,
                        token_db: "-> " + user.token,
                    })

                })
                // console.log(req)
            })
            .catch(err => {
                // if (req.body.username !== 'undefined' || req.body.password !== 'undefined') {
                //     return res.json({
                //         message: "Field not completely filled "
                //     })
                // }
                res.status(500).send({ message: err.message })
            })

    },
    signout: function (req, res) {
        const token = req.headers.token
        res.cookie('token', '', { maxAge: 1 })
        res.send('token : ' + req.cookie)
        // db.sequelize.query(`UPDATE users SET token = '' WHERE id = '${user.id}'`, { type: db.QueryTypes.SELECT });

        // const authHeader = req.headers["authorization"];
        // jwt.sign(token, config.secret, { expiresIn: 0.5 }, (logout, err) => {
        //     if (logout) {
        //         res.send({ msg: 'You have been Logged Out' });
        //     } else {
        //         res.send({ msg: 'Error' });
        //     }
        // });

    }

}




