<template>
  <div id="home">
    <BannerBar />
    <BurgerForm />
  </div>
</template>

<script>

import BannerBar from '@/components/BannerBar.vue'
import BurgerForm from '@/components/BurgerForm.vue'

export default {
  name: 'HomeView',
  components: {
    BannerBar,
    BurgerForm
  }
}

</script>

<style scoped>

  #home {
    width: 100%;
    align-items: center;
    justify-content: center;
    text-align: center;
  }

</style>
