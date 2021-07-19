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
                res.status(500).json({
                    message: err.message
                })
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
                    return res.status(404).json({
                        message: "kategoriRs Not found."
                    })
                }
                res.status(200).json({
                    id: kategoriRs.id,
                    nama: kategoriRs.nama,
                })
            })
            .catch(err => {
                res.status(500).json({
                    message: err.message
                })
            })
    },
    store: (req, res) => {
        // const {id, nama, status} = req.body
        const kategori = {
            id: '',
            nama: req.body.nama,
            status: req.body.status
        }

        if (!kategori.status || !kategori.nama) {
            res.status(400).json({
                message: "Content can not be empty"
            })
            return;
        }
        KategoriRs.findOne({
                where: {
                    nama: req.body.nama
                }
            })
            .then(data => {
                if (data) {
                    return res.status(400).json({
                        message: "Already exist"
                    })
                }
            })
            .catch(err => {
                res.status(500).json({
                    message: err.message
                })
            })

        KategoriRs.create(kategori)
            .then(() => {
                res.redirect('/m/kategoriRs')
            })
            .catch(err => {
                res.status(500).json({
                    message: err.message
                })
            })

    },
    update: (req, res) => {
        KategoriRs.update(req.body, {
                where: {
                    id: req.params.id
                }
            })
            .then(data => {
                if (data == 1) {
                    res.redirect('/m/kategoriRs')
                } else {
                    res.json({
                        message: `Cannot update Tutorial with id=${id}. Maybe Tutorial was not found or req.body is empty!`
                    });
                }
            })
            .catch(err => {
                res.status(500).json({
                    message: "Error updating Tutorial with id=" + id
                });
            });
    }
}