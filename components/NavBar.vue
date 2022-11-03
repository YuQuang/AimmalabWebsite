<template>
  <div
    class="absolute pt-4 px-4 w-full text-center transition-all z-20"
    :class="[scrollTop>100 && 'text-white bg-black/30 backdrop-blur-sm shadow-lg']"
  >
    <div
      class="sm:grid sm:grid-cols-4 grid text-xl font-bold gap-6"
      :class="[scrollTop<100 && 'sm:block hidden']"
    >
      <NuxtLink to="/">
        <div class="cursor-pointer">
          <img src="/images/home.png" class="inline-block" style="height: 30px;" :class="scrollTop>100 && 'invert'">
          <span class="align-middle">Home</span>
        </div>
      </NuxtLink>
      <a href="https://drive.aimmalab.com/">
        <div class="cursor-pointer">
          <img src="/images/drive.png" class="inline-block" style="height: 30px;" :class="scrollTop>100 && 'invert'">
          <span class="align-middle">Drive</span>
        </div>
      </a>
      <a href="https://vpn.aimmalab.com/">
        <div class="cursor-pointer">
          <img src="/images/vpn.png" class="inline-block" style="height: 30px;" :class="scrollTop>100 && 'invert'">
          <span class="align-middle">VPN</span>
        </div>
      </a>
      <a href="https://property.aimmalab.com/">
        <div class="cursor-pointer">
          <img src="/images/property.png" class="inline-block" style="height: 30px;" :class="scrollTop>100 && 'invert'">
          <span class="align-middle">Property</span>
        </div>
      </a>
    </div>
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
