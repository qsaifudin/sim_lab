const config = require("../config/db.config.js");

const Sequelize = require("sequelize");
const sequelize = new Sequelize(
    config.DB,
    config.USER,
    config.PASSWORD, {
    host: config.HOST,
    dialect: config.dialect,
    operatorsAliases: false,
    logging: false,
    define: {
        freezeTableName: true
    },
    pool: {
        max: config.pool.max,
        min: config.pool.min,
        acquire: config.pool.acquire,
        idle: config.pool.idle
    }
})

const db = {};
db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.user = require('../models/user.model')(sequelize, Sequelize);
db.role = require('../models/role.model')(sequelize, Sequelize);
db.provinsi = require('../models/provinsi.model')(sequelize, Sequelize);
db.kabupaten = require('../models/kabupaten.model')(sequelize, Sequelize);
db.kecamatan = require('../models/kecamatan.model')(sequelize, Sequelize);
db.kategoriRs = require('../models/kategori_rs.model')(sequelize, Sequelize);

db.role.hasMany(db.user, {
    as: "user"
})

db.user.belongsTo(db.role, {
    foreignKey: "roleId",
    as: "role"
})

db.ROLES = ["superadmin", "admin", "vendor", "rs", "lab"]

module.exports = db


