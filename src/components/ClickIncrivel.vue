<template>
    <section>
        <h1>Ei ei ei!</h1>
        <button @click="ToggleEvent">
            {{ text }}
        </button>
    </section>
</template>

<script>

export default {
  data () {
    return {
      text: 'Clica aqui meu jovem!',
      loading: false
    }
  },
  methods: {
    ToggleEvent (e) {
      e.preventDefault()
      if (this.loading) return
      this.text = 'Você é uma pessoa incrivel!'
      this.loading = true
      setTimeout(() => {
        this.text = 'Clica aqui meu jovem!'
        this.loading = false
      }, 1000)
    }
  }
}

</script>

<style scoped>

    h1 {
        color: blue;
    }

    section {
        display: flex;
        flex-direction: column;
        flex-wrap: wrap;
        gap: 20px;
        margin: 20px;
    }

</style>
