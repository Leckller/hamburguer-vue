<template>
  <TituloH1 @click-secreto="clickSecreto"/>
  <CondicionamentoFisico />
  <ClickIncrivel prop-question="Clica aqui!!!" prop-response="Você é uma pessoa incrível!!!" />
  <ClickIncrivel prop-question="Clica aqui!!!" prop-response="Você é uma pessoa muuuito legal!!!" />
  <ClickIncrivel :prop-question="bobo" :prop-response="boboClica" />
  <ElementosLegais />
  <AwesomeForm />
</template>

<script>

import TituloH1 from './components/TituloH1.vue'
import CondicionamentoFisico from './components/CondicionamentoFisico.vue'
import ClickIncrivel from './components/ClickIncrivel.vue'
import ElementosLegais from './components/ElementosLegais.vue'
import AwesomeForm from './components/AwesomeForm.vue'

export default {
  name: 'app',
  data () {
    return {
      bobo: 'Clica aqui bobinho!',
      boboClica: 'N aconteceu nada!! hahaha!! bobinho!'
    }
  },
  methods: {
    clickSecreto () {
      console.log('É... Você realmente tem um clique poderoso.')
    }
  },
  components: {
    TituloH1,
    CondicionamentoFisico,
    ClickIncrivel,
    ElementosLegais,
    AwesomeForm
  }

}

</script>

<style>

  h1{
    color: red;
  }

</style>
