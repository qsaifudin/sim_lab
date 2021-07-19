module.exports = {
    // HOST: "localhost",
    HOST: "192.168.100.50",
    USER: "postgres",
    // PASSWORD: "s",
    PASSWORD: "postgres",
    // DB: "sim_lab",
    DB: "lims_adamlabs",
    dialect: "postgres",
    pool: {
        max: 5,
        min: 0,
        acquire: 30000,
        idle: 10000
    }
};
// module.exports = {
//     HOST: "localhost",
//     USER: "postgres",
//     PASSWORD: "postgres",
//     DB: "lims_adamlabs",
//     dialect: "postgres",
//     pool: {
//         max: 5,
//         min: 0,
//         acquire: 30000,
//         idle: 10000
//     }
// };
