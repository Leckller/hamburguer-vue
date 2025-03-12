<template>
    <article id="message-notify">
        <h2>{{ msg }}</h2>
    </article>
</template>

<script>

export default {
  name: 'MessageNotify',
  props: {
    msg: String
  },
  data () {
    return {}
  }

}

</script>

<style scoped>
    #message-notify {
        color: #004085;
        background-color: #CCE5FF;
        border: 2px solid #B8DAFF;
        border-radius: 5px;
        max-width: 400px;
        margin: 30px auto;
    }
</style>
