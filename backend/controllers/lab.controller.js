const db = require('../models')
const Lab = db.lab

module.exports = {
    index: async(req, res) => {
        const labs = await Lab.findAll()
        
        res.json(labs)
    },

    show: async(req, res) => {
        const {id} = req.params

        const lab = await Lab.findOne({
            where: {
                id,
            },
        })
        res.json(lab)
    },

    create: (req, res) => {
        // res.render('lab/create-lab')
    },

    store: async (req, res) => {
        const { nama, rs_id, status } = req.body

        try {
            let newLab = await Lab.create({
                nama,
                rs_id,
                status,
            })
            return res.send(newLab)
        } catch (error) {
            return res.status(500).send({
                message: `Error : ${error.message}`
            })
        }
        // res.redirect('/lab')
    },

    edit: (req, res) => {
        const lab = Lab.findByPk(req.params.id);
    },

    update: (req, res) => {
        const { nama, rs_id, status } = req.body

        Lab.update({
            nama,
            rs_id,
            status
        }, {
            where: {
                id: req.params.id
            }
        }) .then(updatedLab => {
            res.json(updatedLab)
        }) .catch(error => {
            res.status(500).json(error.message)
            // return res.status(500).send({
            //     message: `${error.message}`
            // })
        })
    }
}