<template>
    <header>
      <h1 @click="$emit('clickSecreto')">Olá Vue!</h1>
      <p>{{ frase }}</p>
      <p>Para mais conteúdos de qualidade duvidosa -> <a :href="link" target="_blank">github</a></p>
    </header>
</template>

<script>

export default {
  name: 'TituloH1',
  data () {
    return {
      frase: 'Um começo incrivel!',
      link: 'https://github.com/Leckller'
    }
  },
  emits: ['clickSecreto'],
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
