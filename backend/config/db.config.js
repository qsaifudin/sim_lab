module.exports = {
    HOST: "192.168.100.50",
    USER: "postgres",
    PASSWORD: "postgres",
    DB: "lims_adamlabs",
    // HOST: "localhost",
    // PASSWORD: "s",
    // DB: "sim_lab",
    dialect: "postgres",
    pool: {
        max: 5,
        min: 0,
        acquire: 30000,
        idle: 10000
    }
};