module.exports = {
    HOST: "localhost",
    USER: "postgres",
    PASSWORD: "s",
    // DB: "lims_adamlabs",
    DB: "sim_lab",
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
