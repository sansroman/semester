import Vue from 'vue/dist/vue.esm'
import axios from 'axios'
document.addEventListener('DOMContentLoaded', () => {
  var app = new Vue({
    el: '#app',
    data: {
      message: 'test',
      name
    },
    created: function () {
      axios.get('/index.json', {
      }).then((res) => {
        this.name = res.data.name
      }).catch((error) => {
        console.log(error)
      })
    }
  })
})