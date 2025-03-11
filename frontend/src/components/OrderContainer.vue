<!-- eslint-disable vue/no-mutating-props -->
<template>
    <article class="burger-item">
        <div>
            <p :data-testid="'id-'+id">{{id}}</p>
        </div>
        <div>
            <p :data-testid="'nome-'+nome+'-'+id">{{nome}}</p>
        </div>
        <div>
            <p :data-testid="'pao-'+pao.tipo+'-'+id">{{pao.tipo}}</p>
        </div>
        <div>
            <p :data-testid="'carne-'+carne.tipo+'-'+id">{{carne.tipo}}</p>
        </div>
        <div>
            <ul>
                <li v-for="opcao in opcionais" :data-testid="'opcional-'+opcional+'-'+id" :key="opcao.id">{{opcao}}</li>
            </ul>
        </div>
        <form>
            <select :data-testid="'status-'+id" @change="$emit('changeStatus', $event, id)" name="status" class="status-item">
                <option :data-testid="'status-'+status.tipo+'-'+id" :selected="actualStatus === status.tipo" v-for="status in statusList" :key="status.id">{{ status.tipo }}</option>
            </select>
            <input :data-testid="'submit-'+id" type="submit" @click="$emit('cancelar', $event, id)" value="Cancelar">
        </form>
    </article>
</template>

<script>

export default {
  name: 'OrderContainer',
  emits: ['cancelar'],
  props: {
    id: String,
    pao: { id: Number, tipo: String },
    nome: { id: Number, tipo: String },
    carne: { id: Number, tipo: String },
    actualStatus: String,
    statusList: [{ id: Number, tipo: String }],
    opcionais: [String]
  }
}

</script>

<style scoped>
    .burger-item {
        display: flex;
        width: 90%;
        padding: 16px;
        border-top: solid 1px rgb(15, 12, 0);
        align-items: center;
        gap: 8px;
    }

    .burger-item div {
        display: flex;
        width: 15%;
    }

    .burger-item form {
        display: flex;
        gap: 8px;
    }

    .burger-item form input, select {
        outline: none;
        width: 120px;
        padding: 16px;
        cursor: pointer;
    }

    .burger-item form input {
        background-color: rgb(15, 12, 0);
        color: rgb(255, 208, 0);
    }

</style>
