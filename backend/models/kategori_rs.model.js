module.exports = (sequelize, Sequelize) => {
    const KategoriRs = sequelize.define('kategori_rs', {
        id: {
            type: Sequelize.INTEGER,
            primaryKey: true
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

    return KategoriRs;
}