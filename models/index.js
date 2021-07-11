const config = require("../config/db.config.js");

const { Sequelize, QueryTypes } = require("sequelize");
const sequelize = new Sequelize(
    config.DB,
    config.USER,
    config.PASSWORD, {
    host: config.HOST,
    dialect: config.dialect,
    operatorsAliases: 0,
    logging: 0,
    define: {
        freezeTableName: 1
    },
    pool: {
        max: config.pool.max,
        min: config.pool.min,
        acquire: config.pool.acquire,
        idle: config.pool.idle
    }
})

// const sequelize = new Sequelize("postgres://postgres:postgres@localhost/lims_adamlabs",
//     {
//         host: config.HOST,
//         dialect: config.dialect,
//         operatorsAliases: false,
//         logging: false,
//         define: {
//             freezeTableName: true
//         },
//         pool: {
//             max: config.pool.max,
//             min: config.pool.min,
//             acquire: config.pool.acquire,
//             idle: config.pool.idle
//         }
//     }
// )

const db = {};
db.Sequelize = Sequelize;
db.sequelize = sequelize;
db.QueryTypes = QueryTypes;

db.user = require('../models/user.model')(sequelize, Sequelize);
db.role = require('../models/role.model')(sequelize, Sequelize);
db.provinsi = require('../models/provinsi.model')(sequelize, Sequelize);
db.kabupaten = require('../models/kabupaten.model')(sequelize, Sequelize);
db.kecamatan = require('../models/kecamatan.model')(sequelize, Sequelize);
db.kategoriRs = require('../models/kategori_rs.model')(sequelize, Sequelize);
db.refreshToken = require('../models/refreshToken.model')(sequelize, Sequelize);

// db.role.hasOne(db.user, {
//     as: "users"
// })

db.user.belongsTo(db.role, {
    foreignKey: "roleId",
    as: "roles"
})

db.refreshToken.belongsTo(db.user, {
    foreignKey: 'userId', targetKey: 'id'
});
db.user.hasOne(db.refreshToken, {
    foreignKey: 'userId', targetKey: 'id'
});

db.ROLES = ["superadmin", "admin", "vendor", "rs", "lab"]

module.exports = db


