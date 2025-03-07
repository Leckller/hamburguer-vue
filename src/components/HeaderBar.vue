<template>
    <header id="header">
        <NavBar :alt_nav="alt_nav" :logo_src="logo_src" />
    </header>
</template>

<script>

import NavBar from './NavBar.vue'

export default {
  name: 'HeaderBar',
  props: ['logo_src', 'alt_nav'],
  components: {
    NavBar
  }

}

</script>

<style scoped>

    #header {
        display: flex;
        flex-direction: row;
        background-color: rgb(15, 12, 0);
        justify-content: space-between;
        min-height: 15vh;
        font-size: x-large;
    }

</style>
