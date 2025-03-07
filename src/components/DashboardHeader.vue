<template>
    <section id="Dashboard-header">
        <div>
            <p>
                <strong>#:</strong>
            </p>
        </div>
        <div>
            <p>
                <strong>Cliente:</strong>
            </p>
        </div>
        <div>
            <p>
                <strong>Pão:</strong>
            </p>
        </div>
        <div>
            <p>
                <strong>Carne:</strong>
            </p>
        </div>
        <div>
            <p>
                <strong>Opcionais:</strong>
            </p>
        </div>
        <div>
            <p>
                <strong>Ações:</strong>
            </p>
        </div>
    </section>
</template>

<script>

export default {
  name: 'DashboardHeader'
}

</script>

<style scoped>
    #Dashboard-header {
        display: flex;
        width: 90%;
        padding: 16px;
        border-bottom: solid 2px rgb(15, 12, 0);
    }

    #Dashboard-header div {
        display: flex;
        width: 15%;
    }
</style>
