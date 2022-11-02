<template>
  <div
    class="absolute p-4 w-full text-center transition-all z-10"
    :class="[scrollTop>100 && 'text-white bg-black/30 backdrop-blur-sm shadow-lg']"
  >
    &nbsp;
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
    }
  }
}
</script>
