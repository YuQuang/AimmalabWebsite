<template>
  <div
    class="w-full py-20 px-5 mt-10 flex flex-wrap"
  >
    <div class="md:w-1/2 w-full relative md:h-auto h-96">
      <img src="/images/professor.webp" class="mx-auto w-full h-full object-contain z-10 absolute">
      <div class="bg-cyan-700 w-3/4 absolute left-0" style="bottom: 5vh; height: 20vh;">
        &nbsp;
      </div>
    </div>
    <div class="md:w-1/2 w-full">
      <p class="text-4xl text-center my-5 font-extrabold text-cyan-500">
        Labratory Professor
      </p>
      <p class="text-3xl text-center my-3 font-medium">
        Dr. Chuin-Mu Wang
      </p>
      <div class="w-5/6 mx-auto mt-10">
        <div v-for="value, key in info" :key="key" class="grid grid-cols-3 mt-3">
          <div class="text-cyan-700 font-bold text-xl">
            {{ key }}
          </div>
          <div class="col-span-2 text-xl">
            {{ value }}
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    jarTitle: {
      type: String,
      default: 'default title'
    },
    jarContent: {
      type: String,
      default: 'default content'
    }
  },
  data () {
    return {
      info: {
        Title: '教授兼圖書館館長',
        AQ: '國立成功大學電機工程博士',
        Email: 'cmwang@ncut.edu.tw',
        Phone: '04-23924505 分機:8736',
        Lab: 'E423',
        Expertise: '智能機器人、無人機、人工智能、手機 APP、智慧生活、物聯網及VR/AR/MR創新應用設計'
      }
    }
  }
}
</script>
