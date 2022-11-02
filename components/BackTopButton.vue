<template>
  <div
    class="fixed border right-10 bottom-4 w-14 h-14 rounded-full shadow-lg flex justify-center items-center active:scale-95 transition-all"
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
  props: {
    target: {
      type: String,
      default: ''
    }
  },
  data () {
    return {
      targetElement: null,
      scrollTop: 0
    }
  },
  mounted () {
    this.targetElement = document.getElementById(this.target) ?? document.body
    this.targetElement?.addEventListener('scroll', this.scrollHandler)
  },
  methods: {
    scrollHandler (e) {
      this.scrollTop = e.target.scrollTop
    },
    backToTop () {
      this.targetElement.scrollTop = 0
    }
  }
}
</script>
