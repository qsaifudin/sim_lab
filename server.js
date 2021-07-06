const express = require('express')
const app = express()

const cors = require('cors');
var corsOptions = {
    origin: "http://localhost:8081"
};
app.use(cors(corsOptions))

app.use(express.json());
app.use(express.urlencoded({ extended: true }));

//connect to database
const db = require('./models')
db.sequelize.sync();

// Routing
require('./routes/auth.route')(app)
require('./routes/user.route')(app)
app.listen(3003, () => console.log(`http://localhost:3003`))



// force: true will drop the table if it already exists
// db.sequelize.sync({ force: true })
//     .then(() => {
//         initial()
//     })
// const Role = db.role
// function initial() {
//     Role.create({
//         id: 1,
//         name: "superadmin"
//     });

//     Role.create({
//         id: 2,
//         name: "admin"
//     });

//     Role.create({
//         id: 3,
//         name: "vendor"
//     });
//     Role.create({
//         id: 4,
//         name: "rs"
//     });
//     Role.create({
//         id: 5,
//         name: "lab"
//     });
// }