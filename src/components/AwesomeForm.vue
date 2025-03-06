<template>
    <div>
        <form>
            <input type="text" v-model="comment">
            <input type="submit" @click="Submit">
        </form>
        <section>
            <article v-for="(comment, index) in comments" :key="index">
                <p>Comment Text -> {{ comment.text }}</p>
                <p>Commend Id -> {{ comment.id }}</p>
            </article>
        </section>
    </div>
</template>

<script>

export default {

  data () {
    return {
      comment: '',
      comments: [],
      actualId: 1
    }
  },
  methods: {
    Submit (e) {
      e.preventDefault()
      if (this.comment.length <= 1) {
        alert('Epa, isso aq tá bem vazio meu bom')
        return
      }
      this.comments.push({ text: this.comment, id: this.actualId })
      this.comment = ''
      this.actualId += 1
    }
  }

}

</script>

<style scope>

    section {
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        gap: 20px;
        margin: 20px;
    }

    section > article {
        border: solid black 1px;
        border-radius: 32px;
        display: flex;
        padding: 16px;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        max-width: 300px;
    }

</style>
