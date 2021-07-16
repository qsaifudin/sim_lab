const jwt = require("jsonwebtoken");
const config = require("../config/auth.config.js");
const db = require("../models");
const User = db.user;

const {
    TokenExpiredError
} = jwt

const catchError = (err, res) => {
    if (err instanceof TokenExpiredError) {
        return res.status(401).send({
            message: "Unauthorized! Access Token was expired!"
        })
    }
    return res.sendStatus(401).send({
        message: "Unauthorized!"
    });
}

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
            return catchError(err, res);
        }
        req.userId = decoded.id;
        next();
    });
};

authSuperAdmin = (req, res, next) => {
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

authAdmin = (req, res, next) => {
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

authVendor = (req, res, next) => {
    User.findByPk(req.userId).then(user => {
        user.getRoles().then(roles => {
            if (roles.name === "vendor" || roles.name === "admin") {
                next();
                return;
            }
            res.status(403).send({
                message: "Require Vendor Role!"
            });
        });
    });
};

authRs = (req, res, next) => {
    User.findByPk(req.userId).then(user => {
        user.getRoles().then(roles => {
            if (roles.name === "rs" || roles.name === "admin") {
                next();
                return;
            }
            res.status(403).send({
                message: "Require Rs Role!"
            });
        });
    });
};

authLab = (req, res, next) => {
    User.findByPk(req.userId).then(user => {
        user.getRoles().then(roles => {
            if (roles.name === "lab" || roles.name === "admin") {
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
    authSuperAdmin: authSuperAdmin,
    authAdmin: authAdmin,
    authVendor: authVendor,
    authRs: authRs,
    authLab: authLab
};
module.exports = {
    authJwt
};