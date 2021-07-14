const db = require("../models")
const Provinsi = db.provinsi
const Kota = db.kota
const Kecamatan = db.kecamatan

module.exports = {
    getAllProvinsi: (req, res) => {
        Provinsi.findAll()
            .then(provinsi => {
                res.status(200).json(
                    provinsi
                )
            })
            .catch(err => {
                res.status(500).json({ message: err.message })
            })
    },
    getProvinsi: (req, res) => {
        Provinsi.findOne({
            where: {
                id: req.params.id
            }
        })
            .then(provinsi => {
                if (!provinsi) {
                    return res.status(404).json({ message: "provinsi Not found." })
                }
                // res.json(provinsi)
                // console.log(provinsi)
                provinsi.getKota().then(data => {
                    res.status(200).json({
                        id: provinsi.id,
                        nama: provinsi.nama,
                        kota: data
                    })
                })

            })
            .catch(err => {
                res.status(500).json({ message: err.message })
            })
    },
    getAllKota: (req, res) => {
        Kota.findAll()
            .then(kota => {
                res.status(200).json(
                    kota
                )
            })
            .catch(err => {
                res.status(500).json({ message: err.message })
            })
    },
    getKota: (req, res) => {
        Kota.findOne({
            where: {
                id: req.params.id
            }
        })
            .then(kota => {
                if (!kota) {
                    return res.status(404).json({ message: "kota Not found." })
                }
                // res.json(provinsi)
                // console.log(provinsi)
                kota.getKecamatan().then(data => {
                    // const data2 = {}
                    // for (const key in data) {
                    //     data2[key] = data[key].nama
                    // }
                    // const now = new Data()
                    // console.log(noe)
                    res.status(200).json({
                        id: kota.id,
                        nama: kota.nama,
                        kecamatan: data
                    })
                })

            })
            .catch(err => {
                res.status(500).json({ message: err.message })
            })
    },
    getAllKecamatan: (req, res) => {
        Kecamatan.findAll()
            .then(kecamatan => {
                res.status(200).json(
                    kecamatan
                )
            })
            .catch(err => {
                res.status(500).json({ message: err.message })
            })
    },
}
