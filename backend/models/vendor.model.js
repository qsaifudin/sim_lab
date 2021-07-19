module.exports = (sequelize, Sequelize) => {
    const Vendor = sequelize.define('vendor', {
        id: {
            type: Sequelize.INTEGER,
            primaryKey: true,
            autoIncrement: true
        },
        nama: {
            type: Sequelize.STRING,
            validate: {
                notEmpty: {
                    args: true,
                    msg: 'Nama Vendor harus diisi'
                },
                len: {
                    args: [2, 255],
                    msg: 'Nama Vendor harus lebih dari 2 karakter'
                }
            }
        },
        provinsi: {
            type: Sequelize.STRING,
            validate: {
                notEmpty: {
                    args: true,
                    msg: 'Provinsi harus diisi'
                }
            }
        },
        kota: {
            type: Sequelize.STRING,
            validate: {
                notEmpty: {
                    args: true,
                    msg: 'Kota harus diisi'
                }
            }
        },
        status: {
            type: Sequelize.BOOLEAN,
            validate: {
                notEmpty: {
                    args: true,
                    msg: 'Status harus diisi'
                }
            }
        },

    }, {
        timestamps: false,
        createdAt: false,
        updatedAt: false,
    })

    return Vendor;
}   