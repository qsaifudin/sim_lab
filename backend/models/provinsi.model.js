module.exports = (sequelize, Sequelize) => {
    const Provinsi = sequelize.define('provinsi', {
        id: {
            type: Sequelize.INTEGER,
            primaryKey: true
        },
        nama: {
            type: Sequelize.STRING
        },
        // status: {
        //     type: Sequelize.BOOLEAN
        // },

    }, {
        timestamps: false,
        createdAt: false,
        updatedAt: false,
    })

    return Provinsi;
}