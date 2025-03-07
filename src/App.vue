<template>
  <HeaderBar :alt_nav="alt_nav" :logo_src="logo_src" />
  <div id="main">
    <router-view/>
  </div>
  <FooterBar />
</template>

<script>

import FooterBar from './components/FooterBar.vue'
import HeaderBar from './components/HeaderBar.vue'
import logo from './assets/logo.png'

export default {
  components: {
    HeaderBar,
    FooterBar
  },
  data () {
    return {
      logo_src: logo,
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

  #main {
    min-height: 70vh;
  }

</style>
