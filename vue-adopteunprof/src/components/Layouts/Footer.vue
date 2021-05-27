<script>

</script>

<template>
    <footer class="mt-4 footer">
        <div class="container h-100">
            <div class="wrapper">
                <div class="h-75 d-flex flex-column justify-content-between section">
                    <h6 class="text-uppercase font-weight-bold section-title">Nous contacter</h6>
                    <div class="mb-2">
                        <i class="bi bi-geo-alt-fill mr-2 section-icon"></i>
                        <span>1, rue Demo 75000 Paris, France</span>
                    </div>
                    <div class="mb-2">
                        <i class="bi bi-telephone-fill mr-2 section-icon"></i>
                        <span>01 71 00 00 00</span>
                    </div>
                    <div class="mb-2">
                        <i class="bi bi-envelope-fill mr-2 section-icon"></i>
                        <span>demo@adopteunprof.fr</span>
                    </div>
                </div>

                <div class="h-75 section">
                    <h6 class="text-uppercase font-weight-bold section-title">Informations</h6>
                    <div class="mb-2 section-body">
                        <a class="mb-2 section-item">
                            Qui sommes-nous ?
                        </a>
                        <br>
                        <a class="mb-2 section-item">
                            Livraison
                        </a>
                        <br>
                        <a class="mb-2 section-item">
                            Conditions générales de vente
                        </a>
                        <br>
                        <a class="mb-2 section-item">
                            Mentions générales
                        </a>
                        <br>
                        </div>
                    </div>

                    <div class="h-75 section">
                        <h6 class="text-uppercase font-weight-bold section-title">Mon compte</h6>
                        <div class="section-body" ref="footerAccount">
                            <a class="mb-2 section-item">
                                Mon compte
                            </a>
                            <br>
                            <a class="mb-2 section-item">
                                Historique des achats
                            </a>
                            <br>
                            <a class="mb-2 section-item">
                                Plan du site
                            </a>
                            <br>
                        </div>
                    </div>

                <router-link to="/" class="logo-link">
                    <img :src="require('@/assets/AdopteUnProf_Logo.png')" alt="Logo Adopte un prof" class="logo-link">
                </router-link>
            </div>
        </div>
    </footer>
</template>

<style scoped>

.footer {
    margin-right: auto;
    margin-left: auto;
    box-sizing: border-box;
    background-color: #222a35;
}

.container {
    width:1200px;
    margin-right: auto;
    margin-left: auto;
}

.wrapper {
    display: flex;
    flex-direction: row;
    flex-wrap: nowrap;
    justify-content: space-between;
}

.logo-link {
    width: 10rem;
    height: auto;
    margin-top: 20px;
}

.section {
    white-space: nowrap;
    font-family: 'poppins', sans-serif;
    font-size: 14px;
    font-weight: 400;
    line-height: 30px;
    padding-top: 60px;
    padding-left: 1rem;
    padding-bottom: 0.5rem;
    margin-bottom: 30px;
}

.section-title {
    color: #5caf01;
    font-size: 1.2rem;
    margin-bottom: 40px;
}

.section-icon {
    color:#5caf01;
    font-size: 1.1rem;
    margin-right: 10px;
}

span {
    color:white;
}

.section-item {
    color:rgb(255, 255, 255);
    cursor: pointer;
    text-decoration: none;
    transition: all 300ms ease-out;
    position: absolute;
}

.section-item:hover {
    color:#5caf01;
}

</style>