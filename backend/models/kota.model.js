module.exports = (sequelize, Sequelize) => {
    const Kota = sequelize.define('kota', {
        id: {
            type: Sequelize.INTEGER,
            primaryKey: true
        },
        provinsi_id: {
            type: Sequelize.INTEGER
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

    return Kota;
}