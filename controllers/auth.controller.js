const db = require("../models")
const config = require("../config/auth.config")
const User = db.user

const jwt = require('jsonwebtoken');
const jwtBlacklist = require('jwt-blacklist');

exports.signout = function (req, res) {
    const token = req.headers.token
    // let token = jwtBlacklist.sign({
    //     feeling: 'awesome'
    // }, 'secret', { expiresIn: '2h' });
    // jwtBlacklist; // destroy the token
    // jwtBlacklist.signut; // throw error token expired or destroyed
    res.send('okk + ' + token)
}

exports.signin = (req, res) => {
    console.log(req.body)
    User.findOne({
        where: {
            username: req.body.username
        }
    })
        .then(user => {
            if (!user) {
                return res.status(404).send({ message: "User Not found." })
            }

            if (req.body.password !== user.password) {
                return res.status(401).send({
                    message: "Invalid Password!"
                })
            }

            const token = jwt.sign({ id: user.id }, config.secret, {
                expiresIn: 86400 // 24 hours
            })

            user.getRole().then(roles_arg => {
                // res.setHeader('token', token)
                res.status(200).send({
                    id: user.id,
                    username: user.username,
                    role: { 'id': roles_arg.id, 'role': roles_arg.name },
                    accessToken: token
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

}
