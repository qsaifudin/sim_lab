module.exports = (sequelize, Sequelize) => {
    const Kabupaten = sequelize.define('wilayah_kabupaten', {
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
        status: {
            type: Sequelize.BOOLEAN
        },

    }, {
        timestamps: false,
        createdAt: false,
        updatedAt: false,
    })

    return Kabupaten;
}