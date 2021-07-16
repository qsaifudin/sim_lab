const db = require('../models')
const Rumahsakit = db.rumahsakit

module.exports = {
    index: async(req, res) => {
        const rumahsakit = await Rumahsakit.findAll()
        res.status(200).json(rumahsakit)
    },

    show: async(req, res) => {
        const {id} = req.params

        const rumahsakit = await Rumahsakit.findOne({
            where: {
                 id,
            },
        })
        res.json(rumahsakit)
    },

    create: (req, res) => {
        // res.render('rumahsakit/create')
    },

    store: async(req, res) => {
        const { nama, provinsi, kota, kecamatan, alamat, kategori_id, vendor_id, status } = req.body

        try {
            let newRs = await Rumahsakit.create({
                nama,
                provinsi,
                kota,
                kecamatan,
                alamat,
                kategori_id,
                vendor_id,
                status
            })
            return res.send(newRs)
            // res.redirect('/lab')
        } catch (error) {
            return res.status(500).send({
                message: `Error: ${error.message}`
            })
        }
    },

    edit: (req, res) => {
        const rumahsakit = Rumahsakit.findByPk(req.params.id)
    },

    update: (req, res) => {
        const { nama, provinsi, kota, kecamatan, alamat, kategori_id, vendor_id, status } = req.body

        Rumahsakit.update({
            nama,
            provinsi,
            kota,
            kecamatan,
            alamat,
            kategori_id,
            vendor_id,
            status
        }, {
            where: {
                id: req.params.id
            }
        }) .then(() => {
            res.json(req.body)
        }) .catch(error => {
            res.status(500).json(error.message)
            // return res.status(500).send({
            //     message: `Error: ${error.message}`
            // })
        })
    }
}