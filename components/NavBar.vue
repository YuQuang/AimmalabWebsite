<template>
  <div
    class="absolute p-4 w-full text-right transition-all"
    :class="[scrollTop>100 && 'text-white bg-black/30 backdrop-blur-sm shadow-lg']"
  >
    Header {{scrollTop}}
  </div>
</template>

<script>
export default {
  props: ['target'],
  data () {
    return {
      scrollTop: 0
    }
  },
  mounted () {
    const target = document.getElementById(this.target) ?? document.body
    target?.addEventListener('scroll', this.scrollHandler)
  },
  methods: {
    scrollHandler (e) {
      this.scrollTop = e.target.scrollTop
      console.log(this.scrollTop)
    }
  }
}
</script>
