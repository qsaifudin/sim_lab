<template>
  <v-content>
    <v-container class="fill height" fluid rounded-lg>
      <v-row align="center" justify="center">
        <v-col cols="12" sm="8" md="8">
          <v-card class="elevation-12">
            <v-window v-model="step">
              <v-window-item :value="1">
                <v-row>
                  <v-col cols="12" md="8">
                    <v-card-text class="mt-12">
                      <!-- <h1
                        class="text-center display-2 teal--text text--accent-3"
                      >
                        Welcome to SIM-LAB
                      </h1> -->
                      <div class="text-center">
                        <img src="~/assets/images/logo adam.jpg" />
                      </div>
                      <h4 class="text-center alt-4">
                        Ensure your email for registration
                      </h4>
                      <v-form
                        accept-charset="UTF-8"
                        method="POST"
                        @:submit.prevent="login()"
                      >
                        <v-text-field
                          label="username"
                          v-model="username"
                          name="username"
                          prepend-inner-icon="mdi-email"
                          type="text"
                          color="#328F6C"
                        />
                        <v-text-field
                          id="password"
                          v-model="password"
                          label="Password"
                          name="Password"
                          prepend-inner-icon="mdi-lock"
                          type="password"
                          color="#328F6C"
                        />
                      </v-form>
                      <h3 class="text-center mt-3">Forget your password?</h3>
                      <div class="text-center mt-3">
                        <button type="submit">Submit</button>
                        <v-btn
                          rounded
                          color="#328F6C"
                          link="~/pages/dashboard.vue"
                          ><h3 class="white--text">SIGN IN</h3></v-btn
                        >
                      </div>
                    </v-card-text>
                  </v-col>
                  <v-col cols="12" md="4" class="teal darken-1">
                    <v-card-text class="white--text mt-12">
                      <h1 class="text-center display-1">Hello!</h1>
                      <h5 class="text-center">Feel enjoy with us :)</h5>
                      <div>
                        <v-img src="~/assets/images/nakes-preview.png"> </v-img>
                      </div>
                    </v-card-text>
                  </v-col>
                </v-row>
              </v-window-item>
              <v-window-item :value="2"> </v-window-item>
            </v-window>
          </v-card>
        </v-col>
      </v-row>
    </v-container>
  </v-content>
</template>

<script>
import axios from 'axios'
export default {
  data() {
    return {
      loading: true,
      username: '',
      password: '',
    }
  },
  methods: {
    login() {
      const data = {
        username: this.username,
        password: this.password,
      }
      axios
        .post('http://localhost:3003}', data, {
          headers: {
            Accept: 'application/json',
          },
        })
        .then(
          (response) => {
            this.isSuccess = response.data.success ? true : false
          },
          (response) => {
            localStorage.setItem('token', response.data.accessToken)
            window.location.href.=.'http://localhost:3000/dashboard/'
          }
        )
    },
  },
}
</script>
