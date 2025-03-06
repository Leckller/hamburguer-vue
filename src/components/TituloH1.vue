<template>
    <header>
      <h1>Olá Vue!</h1>
      <p>{{ frase }}</p>
    </header>
</template>

<script>

export default {
  name: 'TituloH1',
  data () {
    return {
      frase: 'Um começo incrivel!'
    }
  },
  created () {
    setTimeout(() => {
      this.frase = 'Um fim terrivel.'
    }, 1000)
  },
  mounted () {
    setTimeout(() => {
      this.frase = 'Uma nova chance!'
    }, 2000)
  }
}

</script>
