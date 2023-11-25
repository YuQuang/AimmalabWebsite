<template>
  <div class="w-full">
    <IndexMainSlider />

    <div class="grid md:grid-cols-3 sm:grid-cols-2 grid-cols-1 gap-10 md:mx-auto mx-5 max-w-5xl md:-mt-40 mt-4">
      <IndexFeatureJar
        class="z-10"
        bg-color="bg-slate-100"
        icon-img="/images/ai.webp"
        jar-title="Artificial Intelligence"
        jar-content="Focus on the AI realm"
      />

      <IndexFeatureJar
        class="z-10"
        bg-color="bg-slate-100"
        icon-img="/images/ic.webp"
        jar-title="Image Processing"
        jar-content="Newest method adopted"
      />

      <IndexFeatureJar
        class="z-10"
        bg-color="bg-cyan-500"
        icon-img="/images/joinus.png"
        jar-title="Wanna join us?"
        jar-content="Welcome to Aimmalab!"
      />
    </div>

    <div id="professorJar" class="opacity-0">
      <IndexProfessorJar />
    </div>

    <div class="bg-slate-200 py-8 px-4">
      <div id="activity" class="opacity-0">
        <div class="text-3xl font-extrabold text-center">
          實驗室近期活動
        </div>
        <div class="text-xl font-medium text-center mt-4 text-cyan-500">
          我已經想不到要放什麼了
        </div>
        <div class="flex flex-wrap py-5 max-w-5xl mx-auto">
          <img v-for="i in 4" :key="i" class="sm:w-1/2 w-full px-5 py-4" crossorigin="anonymous" :src="'https://picsum.photos/400/250?activity' + i">
        </div>
      </div>
    </div>

    <div class="bg-slate-200 py-8 px-4">
      <div id="equipment" class="opacity-0">
        <div class="text-3xl font-extrabold text-center">
          實驗室內部設備
        </div>
        <div class="text-xl font-medium text-center mt-4 text-cyan-500">
          設備多樣
        </div>
        <div class="flex flex-wrap py-5 max-w-5xl mx-auto">
          <img v-for="i in 4" :key="i" class="sm:w-1/2 w-full px-5 py-4" crossorigin="anonymous" :src="'https://picsum.photos/400/250?equipment' +i">
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import anime from 'animejs'
import FeatureJar from '~/components/index/FeatureJar.vue'
import ProfessorJar from '~/components/index/ProfessorJar.vue'

export default {
  name: 'IndexPage',
  components: { FeatureJar, ProfessorJar },
  layout: 'LayoutMain',
  mounted () {
    const observer = new IntersectionObserver((entries) => {
      if (entries[0].isIntersecting === true) {
        anime({
          targets: '#professorJar',
          translateX: [-300, 0],
          opacity: 1,
          easing: 'easeInOutQuad'
        })
        observer.unobserve(document.querySelector('#professorJar'))
      }
    }, { threshold: [0.3] })
    observer.observe(document.querySelector('#professorJar'))

    const activityObserver = new IntersectionObserver((entries) => {
      if (entries[0].isIntersecting === true) {
        anime({
          targets: '#activity',
          translateY: [100, 0],
          opacity: 1,
          easing: 'easeInOutQuad'
        })
        activityObserver.unobserve(document.querySelector('#activity'))
      }
    }, { threshold: [0.5] })
    activityObserver.observe(document.querySelector('#activity'))

    const equipmentObserver = new IntersectionObserver((entries) => {
      if (entries[0].isIntersecting === true) {
        anime({
          targets: '#equipment',
          translateY: [100, 0],
          opacity: 1,
          easing: 'easeInOutQuad'
        })
        equipmentObserver.unobserve(document.querySelector('#equipment'))
      }
    }, { threshold: [0.5] })
    equipmentObserver.observe(document.querySelector('#equipment'))
  }
}
</script>
