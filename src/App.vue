<template>
  <HeaderBar />
  <router-view/>
  <FooterBar />
</template>

<script>

import FooterBar from './components/FooterBar.vue'
import HeaderBar from './components/HeaderBar.vue'

export default {
  components: {
    HeaderBar,
    FooterBar
  },
  data () {
    return {
      logo_src: '',
      alt_nav: ''
    }
  }

}

</script>
<style>

  * {
    font-family: Helvetica;
    padding: 0;
    margin: 0;
    box-sizing: border-box;
  }

</style>
