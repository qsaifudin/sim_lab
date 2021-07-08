const db = require("../models")
const Provinsi = db.provinsi
const Kabupaten = db.kabupaten
const Kecamatan = db.kecamatan

module.exports = {
    getAllProvinsi: (req, res) => {
        Provinsi.findAll()
            .then(provinsi => {
                res.status(200).send(
                    provinsi
                )
            })
            .catch(err => {
                res.status(500).send({ message: err.message })
            })
    },
    getProvinsi: (req, res) => {
        Provinsi.findOne({
            where: {
                id: req.params.id_provinsi
            }
        })
            .then(provinsi => {
                if (!provinsi) {
                    return res.status(404).send({ message: "provinsi Not found." })
                }
                res.status(200).json({
                    id: provinsi.id,
                    nama: provinsi.nama,
                })
            })
            .catch(err => {
                res.status(500).send({ message: err.message })
            })
    },
    getAllKabupaten: (req, res) => {
        Kabupaten.findAll()
            .then(kabupaten => {
                res.status(200).send(
                    kabupaten
                )
            })
            .catch(err => {
                res.status(500).send({ message: err.message })
            })
    },
    getAllKecamatan: (req, res) => {
        Kecamatan.findAll()
            .then(kecamatan => {
                res.status(200).send(
                    kecamatan
                )
            })
            .catch(err => {
                res.status(500).send({ message: err.message })
            })
    },
}
