<template>
  <TituloH1/>
  <CondicionamentoFisico />
</template>

<script>

import TituloH1 from './components/TituloH1.vue'
import CondicionamentoFisico from './components/CondicionamentoFisico.vue'

export default {
  name: 'app',
  components: {
    TituloH1,
    CondicionamentoFisico
  }

}

</script>
