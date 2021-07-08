const db = require("../models")
const KategoriRs = db.kategoriRs

module.exports = {
    getAll: (req, res) => {
        KategoriRs.findAll()
            .then(kategoriRs => {
                res.status(200).send(
                    kategoriRs
                )
            })
            .catch(err => {
                res.status(500).send({ message: err.message })
            })
    },
    find: (req, res) => {
        KategoriRs.findOne({
            where: {
                id: req.params.id
            }
        })
            .then(kategoriRs => {
                if (!kategoriRs) {
                    return res.status(404).send({ message: "kategoriRs Not found." })
                }
                res.status(200).json({
                    id: kategoriRs.id,
                    nama: kategoriRs.nama,
                })
            })
            .catch(err => {
                res.status(500).send({ message: err.message })
            })
    },
    store: (req, res) => {
        // const {id, nama, status} = req.body
        const kategori = {
            id: req.body.id,
            nama: req.body.nama,
            status: req.body.status
        }

        if (!kategori.id || !kategori.nama) {
            res.status(400).send({
                message: "Content can not be empty"
            })
            return;
        }
        KategoriRs.findOne({
            where: {
                id: req.body.id
            }
        })
            .then(data => {
                if (data) {
                    return res.status(400).send({ message: "Already exist" })
                }
            })
            .catch(err => {
                res.status(500).send({ message: err.message })
            })

        KategoriRs.create(kategori)
            .then(() => {
                res.redirect('/m/kategoriRs')
            })
            .catch(err => {
                res.status(500).send({ message: err.message })
            })

    },
    update: (req, res) => {
        KategoriRs.update(req.body, {
            where: { id: req.params.id }
        })
            .then(data => {
                if (data == 1) {
                    res.redirect('/m/kategoriRs')
                } else {
                    res.send({
                        message: `Cannot update Tutorial with id=${id}. Maybe Tutorial was not found or req.body is empty!`
                    });
                }
            })
            .catch(err => {
                res.status(500).send({
                    message: "Error updating Tutorial with id=" + id
                });
            });
    }
}
