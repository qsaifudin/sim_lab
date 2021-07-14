module.exports = (sequelize, Sequelize) => {
    const Kecamatan = sequelize.define('kecamatan', {
        id: {
            type: Sequelize.INTEGER,
            primaryKey: true
        },
        kota_id: {
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

    return Kecamatan;
}