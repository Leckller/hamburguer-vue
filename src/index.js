const App = {
  data() {
    return {
      name: 'Hamburguer Shop',
      hamburguers: [],
      inputValue: ""
    }
  },
  methods: {
    submitForm(e) {
      e.preventDefault();
      console.log(this.inputValue);
      this.hamburguers.push(this.inputValue);
    }
  }
}

Vue.createApp(App).mount('#app');