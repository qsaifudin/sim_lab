<template>
  <v-data-table
    :headers="headers"
    :items="vendor"
    :search="search"
    sort-by="no"
    class="elevation-1"
  >
    <template #[`item.index`]="{ index }"> {{ index + 1 }} </template>
    <template #[`item.status`]="{ item }">
      <v-chip class="ma-2" :color="getColor(item.status)" dark>
        {{ item.status }}
      </v-chip>
    </template>
    <template #top>
      <v-toolbar flat>
        <v-toolbar-title>Data Vendor</v-toolbar-title>
        <v-divider class="mx-4" inset vertical></v-divider>
        <v-spacer></v-spacer>
        <div class="mt-5">
          <v-text-field
            v-model="search"
            append-icon="mdi-magnify"
            label="Search"
            filled
            dense
            outlined
          ></v-text-field>
        </div>
        <v-spacer></v-spacer>
        <v-dialog v-model="dialog" max-width="500px">
          <template #activator="{ on, attrs }">
            <v-btn color="#4337CB" dark class="mb-2" v-bind="attrs" v-on="on">
              Add Vendor
            </v-btn>
          </template>
          <v-card>
            <v-card-title>
              <span class="text-h5">{{ formTitle }}</span>
            </v-card-title>

            <v-card-text>
              <v-container>
                <v-row>
                  <v-col cols="12" sm="6" md="12">
                    <v-text-field
                      v-model="editedItem.name"
                      :rules="nameRules"
                      dense
                      outlined
                      label="Vendor name"
                    ></v-text-field>
                  </v-col>
                  <v-col cols="12" sm="6" md="12">
                    <v-text-field
                      v-model="editedItem.provinsi"
                      :rules="provinsiRules"
                      dense
                      outlined
                      label="Provinsi"
                    ></v-text-field>
                  </v-col>
                  <v-col cols="12" sm="6" md="12">
                    <v-text-field
                      v-model="editedItem.kota"
                      :rules="kotaRules"
                      dense
                      outlined
                      label="Kota"
                    ></v-text-field>
                  </v-col>
                  <v-col cols="12" sm="6" md="12">
                    <v-text-field
                      v-model="editedItem.status"
                      :rules="statusRules"
                      dense
                      outlined
                      label="Status"
                    ></v-text-field>
                  </v-col>
                </v-row>
              </v-container>
            </v-card-text>

            <v-card-actions>
              <v-spacer></v-spacer>
              <v-btn color="blue darken-1" text @click="close"> Cancel </v-btn>
              <v-btn color="blue darken-1" text @click="save"> Save </v-btn>
            </v-card-actions>
          </v-card>
        </v-dialog>
        <v-dialog v-model="dialogDelete" max-width="500px">
          <v-card>
            <v-card-title class="text-h5"
              >Are you sure you want to delete this item?</v-card-title
            >
            <v-card-actions>
              <v-spacer></v-spacer>
              <v-btn color="blue darken-1" text @click="closeDelete"
                >Cancel</v-btn
              >
              <v-btn color="blue darken-1" text @click="deleteItemConfirm"
                >OK</v-btn
              >
              <v-spacer></v-spacer>
            </v-card-actions>
          </v-card>
        </v-dialog>
        <vendor-detail ref="vendorDetail"></vendor-detail>
      </v-toolbar>
    </template>
    <template #[`item.actions`]="{ item }">
      <div justify="space-around">
        <v-btn x-small class="my-2" color="#2E7D32" dark>
          <v-icon small dark @click="detailItem(item)"> mdi-eye </v-icon>
        </v-btn>
        <v-btn x-small class="my-2" color="#FDD835" dark>
          <v-icon small dark @click="editItem(item)"> mdi-pencil </v-icon>
        </v-btn>
        <v-btn x-small class="my-2" color="#F44336" dark>
          <v-icon small dark @click="deleteItem(item)"> mdi-delete </v-icon>
        </v-btn>
      </div>
    </template>
    <template #no-data>
      <v-btn color="primary" @click="initialize"> Reset </v-btn>
    </template>
  </v-data-table>
</template>

<script>
import vendorDetail from '~/pages/vendor/vendorDetail'
export default {
  components: { vendorDetail },
  data: () => ({
    dialog: false,
    dialogDelete: false,
    search: '',
    nameRules: [
      (v) => !!v || 'Name is required',
      (v) => v.length <= 10 || 'Name must be less than 10 characters',
    ],
    provinsiRules: [(v) => !!v || 'Provinsi is required'],
    kotaRules: [(v) => !!v || 'Kota is required'],
    statusRules: [(v) => !!v || 'Status is required'],
    headers: [
      { text: 'No', value: 'index' },
      {
        text: 'Vendor',
        align: 'start',
        sortable: true,
        value: 'name',
      },
      { text: 'Provinsi', value: 'provinsi' },
      { text: 'Kota', value: 'kota' },
      { text: 'Status', value: 'status' },
      { text: 'Actions', value: 'actions', sortable: false },
    ],
    vendor: [],
    editedIndex: -1,
    editedItem: {
      no: '',
      name: '',
      provinsi: '',
      kota: '',
      status: '',
    },
    defaultItem: {
      no: '',
      name: '',
      provinsi: '',
      kota: '',
      status: '',
    },
  }),

  computed: {
    formTitle() {
      return this.editedIndex === -1 ? 'New Vendor' : 'Edit Data Vendor'
    },
  },

  watch: {
    dialog(val) {
      val || this.close()
    },
    dialogDelete(val) {
      val || this.closeDelete()
    },
  },

  created() {
    this.initialize()
  },

  methods: {
    getColor(status) {
      if (status === 'Aktif') return 'green'
      else return 'red'
    },
    initialize() {
      this.vendor = [
        {
          name: 'PT WRG',
          no: 1,
          provinsi: 'Jawa Timur',
          kota: 'Surabaya',
          status: 'Aktif',
          action: '',
        },
        {
          name: 'PT Adam Labs',
          no: 2,
          provinsi: 'Jawa Barat',
          kota: 'Bogor',
          status: 'Aktif',
          action: '',
        },
      ]
    },

    detailItem(item) {
      this.$refs.vendorDetail.open(item)
    },

    editItem(item) {
      this.editedIndex = this.vendor.indexOf(item)
      this.editedItem = Object.assign({}, item)
      this.dialog = true
    },

    deleteItem(item) {
      this.editedIndex = this.vendor.indexOf(item)
      this.editedItem = Object.assign({}, item)
      this.dialogDelete = true
    },

    deleteItemConfirm() {
      this.vendor.splice(this.editedIndex, 1)
      this.closeDelete()
    },

    close() {
      this.dialog = false
      this.$nextTick(() => {
        this.editedItem = Object.assign({}, this.defaultItem)
        this.editedIndex = -1
      })
    },

    closeDelete() {
      this.dialogDelete = false
      this.$nextTick(() => {
        this.editedItem = Object.assign({}, this.defaultItem)
        this.editedIndex = -1
      })
    },

    save() {
      if (this.editedIndex > -1) {
        Object.assign(this.vendor[this.editedIndex], this.editedItem)
      } else {
        this.vendor.push(this.editedItem)
      }
      this.close()
    },
  },
}
</script>
