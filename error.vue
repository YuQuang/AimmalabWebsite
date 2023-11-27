<template>
  <div>
    <NuxtLayout name="404">
      <div class="h-screen bg-rose-400 overflow-y-hidden grid gap-1 lg:grid-cols-8 sm:grid-cols-6 grid-cols-4">
        <div class="absolute bg-white h-96 w-6 border-2 border-black border-r-8" style="bottom: 24vh; left: 49vw;"></div>
        <div class="absolute bg-black h-48 w-96" style="bottom: calc(24vh + 9.25rem); left: calc(49vw - 11.25rem);"></div>
        <div class="absolute bg-white h-48 w-96 border-2 border-black
                    text-9xl font-black text-center"
                    style="bottom: calc(24vh + 10rem); left: calc(49vw - 12rem); line-height: 11rem;">404</div>

        <div v-for="n in 70" class="bg-rose-300" style="height: 15vh;"></div>
        <div class="absolute bg-rose-500 bottom-0" style="height: 25vh; width: 100vw;"></div>
      </div>
    </NuxtLayout>
  </div>
</template>

<script>
  export default {
    methods: {
    }
  }
</script>

<style>
  #background {
  }
</style>