const jwt = require("jsonwebtoken");
const config = require("../config/auth.config.js");
const db = require("../models");
const User = db.user;

verifyToken = (req, res, next) => {
    let token = req.headers["token"];
    // let token = req.headers["x-access-token"];

    if (!token) {
        return res.status(403).send({
            message: "No token provided!"
        });
    }

    jwt.verify(token, config.secret, (err, decoded) => {
        if (err) {
            return res.status(401).send({
                message: "Unauthorized!"
            });
        }
        req.userId = decoded.id;
        req.username = decoded.username;
        next();
    });
};

isSuperAdmin = (req, res, next) => {
    User.findByPk(req.userId).then(user => {
        user.getRoles().then(roles => {
            if (roles.name === "superadmin") {
                next();
                return;
            }
            res.status(403).send({
                message: "Require SuperAdmin Role!"
            });
            return;
        });
    });
};

isAdmin = (req, res, next) => {
    User.findByPk(req.userId).then(user => {
        user.getRoles().then(roles => {
            if (roles.name === "admin" || roles.name === "superadmin") {
                next();
                return;
            }
            res.status(403).send({
                message: "Require Admin Role!"
            });
            return;
        });
    });
};

isVendor = (req, res, next) => {
    User.findByPk(req.userId).then(user => {
        user.getRoles().then(roles => {
            if (roles.name === "vendor") {
                next();
                return;
            }
            res.status(403).send({
                message: "Require Vendor Role!"
            });
        });
    });
};

isRs = (req, res, next) => {
    User.findByPk(req.userId).then(user => {
        user.getRoles().then(roles => {
            if (roles.name === "rs") {
                next();
                return;
            }
            res.status(403).send({
                message: "Require Rs Role!"
            });
        });
    });
};

isLab = (req, res, next) => {
    User.findByPk(req.userId).then(user => {
        user.getRoles().then(roles => {
            if (roles.name === "lab") {
                next();
                return;
            }
            res.status(403).send({
                message: "Require Laboratorium Role!"
            });
        });
    });
};


const authJwt = {
    verifyToken: verifyToken,
    isSuperAdmin: isSuperAdmin,
    isAdmin: isAdmin,
    isVendor: isVendor,
    isRs: isRs,
    isLab: isLab
};
module.exports = { authJwt };
