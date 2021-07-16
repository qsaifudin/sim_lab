module.exports = (sequelize, Sequelize) => {
    const Rumahsakit = sequelize.define('rumahsakit', {
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
                    msg: 'Nama Rumah Sakit harus diisi'
                },
                len: {
                    args: [2, 255],
                    msg: 'Nama Rumah Sakit harus lebih dari 2 karakter'
                }
            }
        },
        provinsi: {
            type: Sequelize.STRING,
            validate: {
                notEmpty: {
                    args: true,
                    msg: 'Provinsi harus diisi'
                },
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
        kecamatan: {
            type: Sequelize.STRING,
            validate: {
                notEmpty: {
                    args: true,
                    msg: 'Kecamatan harus diisi'
                }
            }
        },
        alamat: {
            type: Sequelize.STRING,
            validate: {
                notEmpty: {
                    args: true,
                    msg: 'Alamat harus diisi'
                }
            }
        },
        kategori_id: {
            type: Sequelize.INTEGER,
            validate: {
                notEmpty: {
                    args: true,
                    msg: 'Kategori ID harus diisi'
                },
                isInt: {
                    args: true,
                    msg: 'Kategori ID hanya berisi angka'
                }
            }
        },
        vendor_id: {
            type: Sequelize.INTEGER,
            validate: {
                notEmpty: {
                    args: true,
                    msg: 'Vendor ID harus diisi'
                },
                isInt: {
                    args: true,
                    msg: 'Vendor ID hanya berisi angka'
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
        }
    }, {
        timestamps: false,
        createdAt: false,
        updatedAt: false
    })

    return Rumahsakit
}