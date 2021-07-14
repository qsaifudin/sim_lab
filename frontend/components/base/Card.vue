<template>
  <div>
    <v-row>
      <v-col>
        <v-card>
          <v-card-text class="text-center">
            <v-icon x-large class="mb-2" color="#3949AB">{{ icon }}</v-icon>
            <p class="text-h3 text--primary" color="#000000">{{ count }}</p>
            <div class="text--primary">{{ title }}</div>
          </v-card-text>
        </v-card>
      </v-col>
    </v-row>
  </div>
</template>

<script>
export default {
  props: {
    icon: { type: String, default: 'mdi-hospital-building' },
    title: { type: String, default: 'UnTitle' },
    count: { type: String, default: '0' },
  },
}
</script>
