<template>
    <h1 v-if="apto">Parabéns!!! Seu fisico é impressionante e você passou no teste fisico!</h1>
    <h1 v-else>Infelizmente você não passou no teste fisico. Mas não desanime, treine bastante e tente novamente no próximo teste!</h1>
</template>

<script>

export default {

  data () {
    return {
      apto: false
    }
  }

}

</script>
