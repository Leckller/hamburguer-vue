<template>
    <main id="mainBurger">
        <h2>Monte o seu Burger</h2>
        <MessageNotify :msg="msg" v-show="msg"/>
        <form>
            <div>
                <label class="title" for="nome">Nome do cliente:</label>
                <input type="text" id="nome" name="nome" v-model="nome" placeholder="Digite o seu nome">
            </div>
            <div>
                <label class="title" for="pao">Escolha o pão:</label>
                <select v-model="pao" value="" name="pao" id="pao">
                    <option value="">Selecione o seu pão:</option>
                    <option :value="pao" v-for="pao in paes" :key="pao.id">{{ pao.tipo }}</option>
                </select>
            </div>
            <div>
                <label class="title" for="carne">Escolha a carne:</label>
                <select v-model="carne" name="carne" id="carne">
                    <option value="">Selecione a sua carne:</option>
                    <option :value="carne" v-for="carne in carnes" :key="carne.id">{{ carne.tipo }}</option>
                </select>
            </div>
            <div>
                <label class="title" for="opcionais">Selecione os opcionais:</label>
                <article class="opcional">
                    <label v-for="opcional in opcionaisdata" :key="opcional.id">
                        <input type="checkbox" name="opcionais" v-model="opcionais" :value="opcional.tipo">
                        <span>{{ opcional.tipo }}</span>
                    </label>
                </article>
            </div>
            <div>
                <input :disabled="!(nome && pao && carne && opcionais.length > 0)" @click="createBurger" type="submit" class="submit-btn" value="Criar meu Burger">
            </div>
        </form>
    </main>
</template>

<script>
import MessageNotify from './MessageNotify.vue'

export default {
  name: 'BurgerForm',
  components: {
    MessageNotify
  },
  data () {
    return {
      paes: null,
      carnes: null,
      opcionaisdata: null,
      nome: null,
      pao: null,
      carne: null,
      opcionais: [],
      msg: null
    }
  },
  methods: {
    async getIngredientes () {
      const req = await fetch('http://localhost:3000/ingredientes')
      const data = await req.json()

      this.paes = data.paes
      this.carnes = data.carnes
      this.opcionaisdata = data.opcionais
    },
    async createBurger (e) {
      e.preventDefault()

      const data = {
        nome: this.nome,
        carne: this.carne,
        pao: this.pao,
        opcionais: Array.from(this.opcionais),
        status: 'Solicitado'
      }

      const dataJson = JSON.stringify(data)

      const req = await fetch('http://localhost:3000/burgers', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: dataJson
      })

      const res = await req.json()

      this.msg = `Pedido N${res.id} realizado com sucesso`
      setTimeout(() => {
        this.msg = ''
      }, 3000)

      this.nome = ''
      this.carne = ''
      this.pao = ''
      this.opcionais = []
    }
  },
  mounted () {
    this.getIngredientes()
  }

}

</script>

<style scoped>

    #mainBurger {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        gap: 32px;
        padding: 32px 0;
        font-weight: 600;
    }

    #mainBurger form {
        max-width: 600px;
        width: 100%;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        gap: 16px;
    }

    #mainBurger form div {
        display: flex;
        width: 400px;
        flex-direction: column;
        text-align: start;
        gap: 16px;
    }

    .title {
        border-left: 5px solid yellow;
        padding: 10px;
    }

    .opcional {
        display: flex;
        justify-content: start;
        flex-wrap: wrap;
        width: 100%;
        gap: 8px;
    }

    .opcional label {
        width: 40%;
    }

    .opcional input {
        width: 20px;
    }

    input, select {
        padding: 5px 10px;
        width: 400px;
        cursor: pointer;
    }

    input:disabled {
        cursor: not-allowed
    }

    .submit-btn {
        color: rgb(255, 208, 0);
        background-color: rgb(15, 12, 0);
        outline: none;
        border: none;
        padding: 16px;
    }

</style>
