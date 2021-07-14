<template>
  <v-app>
    <Sidebar />
    <dashboard />
  </v-app>
</template>

<script>
import Sidebar from '~/components/Sidebar'
import dashboard from '~/pages/dashboard'
export default {
  components: {
    Sidebar,
    dashboard,
  },
}
</script>

<style></style>
