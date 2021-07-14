<template>
  <v-app>
    <v-navigation-drawer
      app
      permanent
      floating
      width="300"
      :mini-variant.sync="mini"
      color="#328F6C"
    >
      <v-layout wrap>
        <v-list-item-avatar>
          <v-btn icon color="#FFFFFF" @click.stop="mini = !mini">
            <v-icon>mdi-chevron-left</v-icon>
          </v-btn>
        </v-list-item-avatar>

        <v-list nav>
          <template v-for="(item, index) in items">
            <v-list-item :key="index" :to="`${item.link}`" :title="item.title">
              <v-list-item-icon>
                <v-icon color="#FFFFFF">{{ item.icon }}</v-icon>
              </v-list-item-icon>
              <v-list-item-content>
                <v-list-item-title>
                  <h4 class="white--text">{{ item.title }}</h4>
                </v-list-item-title>
              </v-list-item-content>
            </v-list-item>
          </template>
        </v-list>
      </v-layout>
    </v-navigation-drawer>

    <v-app-bar flat app fixed>
      <v-toolbar-title><h3 color="#328F6C">SIM-LAB</h3></v-toolbar-title>
      <v-spacer></v-spacer>
      <!-- <div>
        <v-text-field
          placeholder="Search"
          filled
          small
          solo-inverted
          hide-details
          flat
          dense
          prepend-inner-icon="mdi-magnify"
        >
        </v-text-field>
      </div> -->
    </v-app-bar>

    <v-main>
      <div class="pa-5">
        <nuxt />
      </div>
    </v-main>
  </v-app>
</template>

<script>
export default {
  data() {
    return {
      items: [
        {
          link: '/dashboard',
          icon: 'mdi-view-dashboard',
          title: 'Dashboard',
        },
        {
          link: '/category/category',
          icon: 'mdi-buffer',
          title: 'Datamaster Category',
        },
        {
          link: '/rumkit',
          icon: 'mdi-hospital-building',
          title: 'Datamaster Rumah Sakit',
        },
        {
          link: '/laboratorium',
          icon: 'mdi-flask-outline',
          title: 'Datamaster Laboratorium',
        },
        {
          link: '/vendor/vendor',
          icon: 'mdi-account-group',
          title: 'Datamaster Vendor',
        },
        {
          link: '/user',
          icon: 'mdi-account-box',
          title: 'Datamaster User',
        },
        {
          link: '/login',
          icon: 'mdi-arrow-left-bold-outline',
          title: 'Logout',
        },
      ],
      mini: true,
    }
  },
}
</script>

<style></style>
