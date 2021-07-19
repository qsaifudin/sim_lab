<template>
  <v-dialog v-model="dialog" max-width="500px">
    <v-card>
      <v-card-title>
        <span class="headline">Detail Rumah Sakit</span>
      </v-card-title>
      <v-list v-if="detailItem" class="px-4" flat>
        <v-list-item>
          <v-list-item-icon>
            <v-icon large>mdi-account-outline</v-icon>
          </v-list-item-icon>
          <v-list-item-content>
            <v-list-item-subtitle class="text-big">Nama :</v-list-item-subtitle>
            <v-list-item-title
              class="text-big"
              v-text="detailItem.name"
            ></v-list-item-title>
          </v-list-item-content>
        </v-list-item>

        <v-list-item>
          <v-list-item-icon>
            <v-icon large>mdi-map-marker</v-icon>
          </v-list-item-icon>
          <v-list-item-content>
            <v-list-item-subtitle class="text-big"
              >Provinsi:</v-list-item-subtitle
            >
            <v-list-item-title
              class="text-big"
              v-text="detailItem.provinsi"
            ></v-list-item-title>
          </v-list-item-content>
        </v-list-item>

        <v-list-item>
          <v-list-item-icon>
            <v-icon large>mdi-city</v-icon>
          </v-list-item-icon>
          <v-list-item-content>
            <v-list-item-subtitle class="text-big">Kota:</v-list-item-subtitle>
            <v-list-item-title
              class="text-big"
              v-text="detailItem.kota"
            ></v-list-item-title>
          </v-list-item-content>
        </v-list-item>

        <v-list-item>
          <v-list-item-icon>
            <v-icon large>mdi-home</v-icon>
          </v-list-item-icon>
          <v-list-item-content>
            <v-list-item-subtitle class="text-big"
              >Alamat:</v-list-item-subtitle
            >
            <v-list-item-title
              class="text-big"
              v-text="detailItem.alamat"
            ></v-list-item-title>
          </v-list-item-content>
        </v-list-item>

        <!-- <v-list-item>
          <v-list-item-icon>
            <v-icon large>mdi-apps</v-icon>
          </v-list-item-icon>
          <v-list-item-content>
            <v-list-item-subtitle class="text-big"
              >Id Category:</v-list-item-subtitle
            >
            <v-list-item-title
              class="text-big"
              v-text="detailItem.category_id"
            ></v-list-item-title>
          </v-list-item-content>
        </v-list-item> -->

        <!-- <v-list-item>
          <v-list-item-icon>
            <v-icon large>mdi-account-group</v-icon>
          </v-list-item-icon>
          <v-list-item-content>
            <v-list-item-subtitle class="text-big"
              >Id Vendor:</v-list-item-subtitle
            >
            <v-list-item-title
              class="text-big"
              v-text="detailItem.vendor_id"
            ></v-list-item-title>
          </v-list-item-content>
        </v-list-item> -->
      </v-list>

      <v-card-actions>
        <v-spacer></v-spacer>
        <v-btn color="blue darken-1" text @click="close"> Close </v-btn>
      </v-card-actions>
    </v-card>
  </v-dialog>
</template>

<script>
export default {
  name: 'RumkitDetail',
  components: {},
  data: () => ({
    dialog: false,
  }),
  methods: {
    open(item) {
      this.dialog = true
      this.detailItem = Object.assign({}, item)
    },
    close() {
      this.dialog = false
    },
  },
}
</script>

<style scoped></style>
