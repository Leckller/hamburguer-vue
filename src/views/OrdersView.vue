<template>
  <div id="about">
    <DashboardContainer />
  </div>
</template>

<script>
import DashboardContainer from '@/components/DashboardContainer.vue'

export default {
  name: 'OrdersView',
  components: {
    DashboardContainer
  }

}

</script>

<style scoped>
  #about {
    width: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    padding: 32px 0;
  }
</style>
