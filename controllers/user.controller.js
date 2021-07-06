module.exports = {
    allAccess: (req, res) => {
        res.status(200).send("Public Content.")
    },
    superAdminBoard: (req, res) => {
        res.status(200).send("Super Admin Content.")
    },
    adminBoard: (req, res) => {
        res.status(200).send("Admin Content.")
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




