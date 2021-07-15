<template>
  <v-data-table
    :headers="headers"
    :items="rs"
    :search="search"
    sort-by="id"
    class="elevation-1"
  >
    <template #[`item.status`]="{ item }">
      <v-chip class="ma-2" :color="getColor(item.status)" dark>
        {{ item.status }}
      </v-chip>
    </template>
    <template #top>
      <v-toolbar flat>
        <v-toolbar-title>Category Rumah Sakit</v-toolbar-title>
        <v-divider class="mx-4" inset vertical></v-divider>
        <v-spacer></v-spacer>
        <v-text-field
          v-model="search"
          append-icon="mdi-magnify"
          label="Search"
          single-line
          hide-details
        ></v-text-field>
        <v-spacer></v-spacer>
        <v-dialog v-model="dialog" max-width="500px">
          <template #activator="{ on, attrs }">
            <v-btn color="#4337CB" dark class="mb-2" v-bind="attrs" v-on="on">
              Add Category
            </v-btn>
          </template>
          <v-card>
            <v-card-title>
              <span class="text-h5">{{ formTitle }}</span>
            </v-card-title>

            <v-card-text>
              <v-container>
                <v-row>
                  <v-col cols="12" sm="6" md="4">
                    <v-text-field
                      v-model="editedItem.name"
                      label="RS name"
                    ></v-text-field>
                  </v-col>
                  <v-col cols="12" sm="6" md="4">
                    <v-text-field
                      v-model="editedItem.id"
                      label="Id"
                    ></v-text-field>
                  </v-col>
                  <v-col cols="12" sm="6" md="4">
                    <v-text-field v-model="editedItem.status" label="Status">
                    </v-text-field>
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
        <category-detail ref="categoryDetail"></category-detail>
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
import categoryDetail from '~/pages/category/categoryDetail'
export default {
  components: { categoryDetail },
  data: () => ({
    dialog: false,
    dialogDelete: false,
    search: '',
    headers: [
      {
        text: 'Rumah Sakit',
        align: 'start',
        sortable: false,
        value: 'name',
      },
      { text: 'Id', value: 'id' },
      { text: 'Status', value: 'status' },
      { text: 'Actions', value: 'actions', sortable: true },
    ],
    rs: [],
    editedIndex: -1,
    editedItem: {
      name: '',
      id: '',
      status: '',
    },
    defaultItem: {
      name: '',
      id: '',
      status: '',
    },
  }),

  computed: {
    formTitle() {
      return this.editedIndex === -1 ? 'New Category' : 'Edit Item'
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
      this.rs = [
        {
          name: 'Rumah Sakit Umum',
          id: 1,
          status: 'Aktif',
          action: '',
        },
        {
          name: 'RS Swasta',
          id: 2,
          status: 'Aktif',
          action: '',
        },
        {
          name: 'RSUD',
          id: 3,
          status: 'Non-Aktif',
          action: '',
        },
      ]
    },

    detailItem(item) {
      this.$refs.categoryDetail.open(item)
    },

    editItem(item) {
      this.editedIndex = this.rs.indexOf(item)
      this.editedItem = Object.assign({}, item)
      this.dialog = true
    },

    deleteItem(item) {
      this.editedIndex = this.rs.indexOf(item)
      this.editedItem = Object.assign({}, item)
      this.dialogDelete = true
    },

    deleteItemConfirm() {
      this.rs.splice(this.editedIndex, 1)
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
        Object.assign(this.rs[this.editedIndex], this.editedItem)
      } else {
        this.rs.push(this.editedItem)
      }
      this.close()
    },
  },
}
</script>
