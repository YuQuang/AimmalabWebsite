<template>
  <div
    class="fixed border right-10 bottom-4 w-14 h-14 rounded-full shadow-lg flex justify-center items-center active:scale-95 transition-all bg-slate-50"
    :class="[scrollTop<150 && 'scale-0 pointer-events-none']"
    @click="backToTop"
  >
    <svg
      xmlns="http://www.w3.org/2000/svg"
      fill="none"
      viewBox="0 0 24 24"
      stroke-width="1.5"
      stroke="currentColor"
      class="w-6 h-6"
    >
      <path stroke-linecap="round" stroke-linejoin="round" d="M4.5 15.75l7.5-7.5 7.5 7.5" />
    </svg>
  </div>
</template>

<script>
export default {
  data () {
    return {
      scrollTop: 0
    }
  },
  mounted () {
    this.$nextTick(() => {
      window.document.addEventListener('scroll', this.scrollHandler)
    })
  },
  methods: {
    scrollHandler (e) {
      this.scrollTop = window.document.documentElement.scrollTop
    },
    backToTop () {
      window.document.documentElement.scrollTop = 0
    }
  }
}
</script>
