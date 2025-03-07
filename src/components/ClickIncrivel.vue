<template>
    <section>
        <h1>Ei ei ei!</h1>
        <button @click="ToggleEvent">
            {{ loading ? propResponse : propQuestion }}
        </button>
    </section>
</template>

<script>

export default {
  data () {
    return {
      loading: false
    }
  },
  props: {
    propQuestion: String,
    propResponse: String
  },
  methods: {
    ToggleEvent (e) {
      e.preventDefault()
      if (this.loading) return
      this.loading = true
      setTimeout(() => {
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
