<template>
  <TituloH1/>
  <CondicionamentoFisico />
  <ClickIncrivel />
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
