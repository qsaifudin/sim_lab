module.exports = (sequelize, Sequelize) => {
    const Auth = sequelize.define('auth', {
        user_id: {
            type: Sequelize.INTEGER
        },
        token: {
            type: Sequelize.STRING
        }
    }, {
        timestamps: false,
        createdAt: false,
        updatedAt: false,
    })

    return Auth;
}