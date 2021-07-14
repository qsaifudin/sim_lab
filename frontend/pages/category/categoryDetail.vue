<template>
  <v-dialog v-model="dialog" max-width="500px">
    <v-card>
      <v-card-title>
        <span class="headline">Detail Category RS</span>
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
            <v-icon large>mdi-file-check</v-icon>
          </v-list-item-icon>
          <v-list-item-content>
            <v-list-item-subtitle class="text-big"
              >Status:</v-list-item-subtitle
            >
            <v-list-item-title
              class="text-big"
              v-text="detailItem.status"
            ></v-list-item-title>
          </v-list-item-content>
        </v-list-item>
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
  name: 'CategoryDetail',
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
