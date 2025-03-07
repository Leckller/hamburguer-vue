<!-- eslint-disable vue/no-mutating-props -->
<template>
    <article id="burger-item">
        <div>
            <p>{{id}}</p>
        </div>
        <div>
            <p>{{nome}}</p>
        </div>
        <div>
            <p>{{pao.tipo}}</p>
        </div>
        <div>
            <p>{{carne.tipo}}</p>
        </div>
        <div>
            <ul>
                <li v-for="opcao in opcionais" :key="opcao.id">{{opcao}}</li>
            </ul>
        </div>
        <form>
            <select @change="$emit('changeStatus', $event, id)" name="status" class="status-item">
                <option :selected="actualStatus === status.tipo" v-for="status in statusList" :key="status.id">{{ status.tipo }}</option>
            </select>
            <input type="submit" @click="$emit('cancelar', $event, id)" value="Cancelar">
        </form>
    </article>
</template>

<script>

export default {
  name: 'OrderContainer',
  emits: ['cancelar'],
  props: {
    id: Number,
    pao: String,
    nome: String,
    carne: String,
    actualStatus: String,
    statusList: [],
    opcionais: []
  }
}

</script>

<style scoped>
    #burger-item {
        display: flex;
        width: 90%;
        padding: 16px;
        border-top: solid 1px rgb(15, 12, 0);
        align-items: center;
        gap: 8px;
    }

    #burger-item div {
        display: flex;
        width: 15%;
    }

    #burger-item form {
        display: flex;
        gap: 8px;
    }

    #burger-item form input, select {
        outline: none;
        width: 120px;
        padding: 16px;
        cursor: pointer;
    }

    #burger-item form input {
        background-color: rgb(15, 12, 0);
        color: rgb(255, 208, 0);
    }

</style>
