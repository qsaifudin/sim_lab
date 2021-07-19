<template>
  <v-row>
    <v-col>
      <div>
        <v-row>
          <v-col>
            <v-container grid-list-xs fluid>
              <v-layout wrap>
                <h1 class="title grey--text">Dashboard</h1>
                <v-spacer></v-spacer>
                <v-btn icon>
                  <v-icon>mdi-plus-box-outline</v-icon>
                </v-btn>
              </v-layout>
            </v-container>
          </v-col>
        </v-row>
      </div>
      <v-row>
        <v-col>
          <Card
            title="Jumlah Rumah Sakit"
            count="200"
            icon="mdi-hospital-building"
          />
        </v-col>
        <v-col>
          <Card
            title="Jumlah Laboratorium"
            count="100"
            icon="mdi-flask-outline"
          />
        </v-col>
        <v-col>
          <Card title="Jumlah Vendor" count="150" icon="mdi-account-group" />
        </v-col>
        <v-col>
          <Card title="Jumlah User" count="100" icon="mdi-account-box" />
        </v-col>
      </v-row>
    </v-col>
  </v-row>
</template>

<script>
import Card from '~/components/base/Card.vue'
export default {
  components: {
    Card,
  },
  mounted() {
    this.$axios
      .get('api/auth/cek-login', {
        refreshTokenData: localStorage.getItem('refreshToken'),
      })
      .then((res) => {
        console.log(res)
        if (res.data.message === 'ok') {
          this.$router.push('/')
        } else {
          this.$router.push('login')
        }
      })
      .catch((err) => {
        console.log(err)
      })
  },
}
</script>
