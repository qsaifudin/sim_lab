module.exports = (sequelize, Sequelize) => {
    const Role = sequelize.define("roles", {
        id: {
            type: Sequelize.INTEGER,
            autoIncrement: true,
            primaryKey: true
        },
        name: {
            type: Sequelize.STRING
        }
    }, {
        timestamps: false,
        createdAt: false,
        updatedAt: false,
    })

    return Role;
}