<template>
  <div class="overflow-hidden">
    <NavBar target="main" />
    <main id="main" class="overflow-y-auto w-full h-full flex flex-col">
      <div class="flex-1">
        <NuxtPage />
      </div>
      <div class="flex-none">
        <MainFooter />
      </div>
    </main>
    <BackTopButton target="main" />
  </div>
</template>

<script>
  import NavBar from '../components/NavBar.vue'
  import BackTopButton from '../components/BackTopButton.vue'
  import MainFooter from '~/components/MainFooter.vue'

  export default {
    components: { NavBar, BackTopButton, MainFooter }
  }
</script>
