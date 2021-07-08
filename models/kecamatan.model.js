module.exports = (sequelize, Sequelize) => {
    const Kecamatan = sequelize.define('wilayah_kecamatan', {
        id: {
            type: Sequelize.INTEGER,
            primaryKey: true
        },
        kabupaten_id: {
            type: Sequelize.INTEGER
        },
        nama: {
            type: Sequelize.STRING
        },
        status: {
            type: Sequelize.BOOLEAN
        },

    }, {
        timestamps: false,
        createdAt: false,
        updatedAt: false,
    })

    return Kecamatan;
}