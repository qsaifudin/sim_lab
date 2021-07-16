const db = require("../models")
const Vendor = db.vendor

module.exports = {
    index: async (req, res) => {
        const vendors = await Vendor.findAll();

        res.status(200).json(vendors)
    },

    show: async(req, res) => {
        const { id } = req.params;

        const vendor = await Vendor.findOne({
            where: {
                id,
            },
        })
        res.json(vendor)
    },
    
    create: (req, res) => {
        // res.render('vendor/create-vendor')
    },

    store: async(req, res) => {
        const { nama, provinsi, kota, status } = req.body

        try {
            let newVendor = await Vendor.create({   
                nama,
                provinsi,
                kota,
                status
            })
            return res.send(newVendor)
            // res.redirect('/vendor')
        } catch (error) {
            return res.status(500).send({
                message: `Error : ${error.message}`
            })
        }
    },

    edit: (req, res) => {
        const vendor = Vendor.findByPk(req.params.id);
    },
    
    update: (req, res) => {                                        
        const { nama, provinsi, kota, status } = req.body

         Vendor.update({
            nama,
            provinsi,
            kota,
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