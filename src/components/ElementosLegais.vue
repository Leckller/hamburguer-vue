<template>
    <ul>
        <li v-for="(element, index) in elementos" :key="index">
            {{ element }}
        </li>
    </ul>
</template>

<script>

export default {
  data () {
    return {
      elementos: ['😀', '😁', '😊']
    }
  }
}

</script>
