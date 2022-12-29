<template>
  <div class="w-full">
    <!-- Title Image with welcome -->
    <div class="w-full bg-cover bg-center relative z-0" style="background-image: url('/images/cover.webp');height: 90vh;">
      <div class="backdrop-blur-sm bg-white/5 w-full h-full" />
      <img src="/images/csielogo.webp" max-width="400" class="absolute top-20 sm:right-5 sm:left-auto right-0 left-0">
      <div class="absolute text-slate-100" style="top: 30vh; left: 10vw; right: 10vw;">
        <div class="text-md font-bold p-3 bg-black/30 rounded-md inline-block">
          <span class="text-2xl text-cyan-300">Welcome!!</span> to our website
        </div>
        <br>
        <div class="text-5xl font-bold p-3 bg-black/40 rounded-md inline-block mt-5">
          多媒體<span class="text-cyan-400">智慧</span>應用實驗室
          <br>
          <span class="text-xl inline-block">
            Multimedia <span class="text-cyan-400">Intelligence</span> Application Lab
          </span>
        </div>
      </div>
    </div>

    <div class="grid md:grid-cols-3 sm:grid-cols-2 grid-cols-1 gap-10 md:mx-auto mx-5 max-w-5xl -mt-48">
      <FeatureJar
        class="z-10"
        bg-color="bg-slate-100"
        icon-img="/images/ai.webp"
        jar-title="Artificial Inteligence"
        jar-content="Our lab is dedicated to working on the AI region."
      />

      <FeatureJar
        class="z-10"
        bg-color="bg-slate-100"
        icon-img="/images/ic.webp"
        jar-title="System On Chips"
        jar-content="System on chip, i don't know what should i put in here."
      />

      <FeatureJar
        class="z-10"
        bg-color="bg-cyan-500"
        jar-title="Want to join us?"
        jar-content="Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries"
      />
    </div>

    <div id="professorJar" class="opacity-0">
      <ProfessorJar />
    </div>

    <div class="bg-slate-200 py-8 px-4">
      <div id="activity" class="opacity-0">
        <div class="text-3xl font-extrabold text-center">
          實驗室近期活動
        </div>
        <div class="text-xl font-medium text-center mt-4 text-cyan-500">
          日月潭一日遊、年末尾牙
        </div>
        <div class="flex flex-wrap py-5 max-w-5xl mx-auto">
          <img v-for="i in 4" :key="i" class="sm:w-1/2 w-full px-5 py-4" :src="'https://picsum.photos/400/250?activity' + i">
        </div>
      </div>
    </div>

    <div class="bg-slate-200 py-8 px-4">
      <div id="equipment" class="opacity-0">
        <div class="text-3xl font-extrabold text-center">
          實驗室內部設備
        </div>
        <div class="text-xl font-medium text-center mt-4 text-cyan-500">
          位台北車站前全新地標大樓，知名上市公司保障經營
        </div>
        <div class="flex flex-wrap py-5 max-w-5xl mx-auto">
          <img v-for="i in 4" :key="i" class="sm:w-1/2 w-full px-5 py-4" :src="'https://picsum.photos/400/250?equipment' +i">
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import anime from 'animejs'
import FeatureJar from '~/components/FeatureJar.vue'
import ProfessorJar from '~/components/ProfessorJar.vue'

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
