<template>
  <nav id="nav">
    <router-link to="/">
      <img :src="logo" :alt="alt">
    </router-link>
    <div>
      <router-link to="/">Home</router-link>
      <router-link to="/orders">Orders</router-link>
    </div>
  </nav>
</template>

<script>

export default {
  name: 'NavBar',
  props: ['logo', 'alt'],
  data () {
    return {

    }
  }
}

</script>

<style scoped>

  #nav {

  }

</style>
