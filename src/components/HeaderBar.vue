<template>
    <header id="header">
        <NavBar />
    </header>
</template>

<script>

import NavBar from './NavBar.vue'

export default {
  name: 'HeaderBar',
  components: {
    NavBar
  }

}

</script>

<style scoped>

    #header {

        display: flex;
        flex-direction: row;
        justify-content: space-between;

    }

</style>
