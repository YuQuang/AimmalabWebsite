<template>
  <div class="w-screen h-screen overflow-hidden">
    <NavBar target="main" />
    <main id="main" class="overflow-y-auto w-full h-full flex flex-col">
      <div class="flex-1">
        <Nuxt />
      </div>
      <div class="flex-none">Footer</div>
    </main>
    <BackTopButton target="main" />
  </div>
</template>

<script>
import NavBar from '../components/NavBar.vue'
import BackTopButton from '../components/BackTopButton.vue'

export default {
  components: { NavBar, BackTopButton }
}
</script>
