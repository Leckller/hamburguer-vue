<template>
    <main id="mainDashBoard">
        <h1>Gerenciar pedidos:</h1>
        <MessageNotify v-show="msg" :msg="msg"/>
        <DashboardHeader />
        <OrderContainer
            v-for="burger in burgers" :key="burger.id"
            :carne="burger.carne" :id="burger.id" :nome="burger.nome"
            :opcionais="burger.opcionais" :pao="burger.pao" :statusList="status"
            :actual-status="burger.status" @cancelar="cancelar" @change-status="changeStatus"
        />
    </main>
</template>

<script>
import DashboardHeader from './DashboardHeader.vue'
import MessageNotify from './MessageNotify.vue'
import OrderContainer from './OrderContainer.vue'

export default {
  data () {
    return {
      burgers: [],
      status: [],
      msg: ''
    }
  },
  components: {
    OrderContainer,
    DashboardHeader,
    MessageNotify
  },
  methods: {
    async getOrders () {
      const req = await fetch('http://localhost:3000/burgers')
      const data = await req.json()

      this.burgers = data
    },
    async getStatus () {
      const req = await fetch('http://localhost:3000/status')
      const data = await req.json()

      this.status = data
    },
    async cancelar (e, burgerId) {
      e.preventDefault()

      await fetch(`http://localhost:3000/burgers/${burgerId}`, {
        method: 'DELETE'
      })

      this.msg = `O pedido N${burgerId} foi cancelado com sucesso.`
      setTimeout(() => {
        this.msg = ''
      }, 3000)

      this.getOrders()
    },
    async changeStatus (e, burgerId) {
      const option = event.target.value

      const dataJson = JSON.stringify({ status: option })

      await fetch(`http://localhost:3000/burgers/${burgerId}`, {
        method: 'PATCH',
        headers: { 'Content-Type': 'application/json' },
        body: dataJson
      })

      this.msg = `O status do pedido N${burgerId} foi alterado com sucesso.`
      setTimeout(() => {
        this.msg = ''
      }, 3000)
    }
  },
  mounted () {
    this.getOrders()
    this.getStatus()
  }
}

</script>

<style scoped>
    #mainDashBoard {
        width: 100%;
        justify-content: center;
        align-items: center;
        display: flex;
        flex-direction: column;
    }
</style>
