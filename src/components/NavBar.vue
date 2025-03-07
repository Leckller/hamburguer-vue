<template>
  <nav id="nav">
    <router-link to="/">
      <img :src="logo_src" :alt="alt_nav">
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
  props: ['logo_src', 'alt_nav'],
  data () {
    return {

    }
  }
}

</script>

<style scoped>

  #nav {
    display: flex;
    flex-direction: row;
    width: 100%;
    justify-content: space-between;
    padding: 8px;
    align-items: center;
  }

  #nav div {
    display: flex;
    gap: 16px;
  }

  a {
    color: rgb(255, 208, 0);
    transition: 0.5s;
    text-decoration: none;
  }

  a:hover {
    filter: brightness(1.5);
  }

  img {
    width: 100px;
  }

</style>
