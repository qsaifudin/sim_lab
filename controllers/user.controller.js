module.exports = {
    allAccess: (req, res) => {
        res.status(200).send("Public Content.")
    },
    superAdminBoard: (req, res) => {
        // console.log(req)
        res.status(200).json({ message: "Page Super Admin.", id: req.userId, username: req.username })
    },
    adminBoard: (req, res) => {
        res.status(200).send({ message: "Page Admin .", id: req.userId, username: req.username })
    },
    vendorBoard: (req, res) => {
        res.status(200).send("vendor Content.")
    },
    rsBoard: (req, res) => {
        res.status(200).send("Rumah Sakit Content.")
    },
    labBoard: (req, res) => {
        res.status(200).send("laboratorium Content.")
    }
}




