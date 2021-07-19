module.exports = (sequelize, Sequelize) => {
    const Lab = sequelize.define('lab', {
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
                    msg: 'Nama Lab harus diisi'
                },
                len: {
                    args: [2, 255],
                    msg: 'Nama Lab harus lebih dari 2 Karakter'
                }
            }
        },
        rs_id: {
            type : Sequelize.INTEGER,
            validate: {
                notEmpty: {
                    args: true,
                    msg: 'ID Rumah Sakit pada Lab harus diisi'
                }
            }
        },
        status: {
            type: Sequelize.BOOLEAN,
            validate: {
                notEmpty: {
                    args: true,
                    msg: 'Status Lab harus diisi'
                }
            }
        }
    }, {
        timestamps: false,
        createdAt: false,
        updatedAt: false
    })

    return Lab
}