<template>
  <div class="fixed top-5 left-5 bg-white/70 rounded-md p-2 cursor-pointer z-50 select-none
              outline outline-1 outline-gray-200"
       @click="toggleSideBar()">
    <img src="/images/list.png" style="height: 25px;">
  </div>
  <div id="sidebar"
       class="fixed top-0 h-screen bg-gray-100 z-40 select-none
              lg:w-1/4 md:w-1/3 sm:w-1/2 w-screen opacity-0 -translate-x-full">
      <div class="h-20 border-b-2 border-gray-200">
      </div>
      <div>
        <NuxtLink to="/">
          <div class="cursor-pointer p-5">
            <span class="align-middle">Home</span>
          </div>
        </NuxtLink>

        <div class="cursor-pointer p-5" onclick="window.location.href='http://drive.aimmalab.com'">
          <span class="align-middle">Drive</span>
        </div>
        
        <div class="cursor-pointer p-5" onclick="window.location.href='http://rancher.aimmalab.com'">
          <span class="align-middle">Drive</span>
        </div>
      </div>
  </div>
</template>

<script>
import anime from 'animejs'

export default {
  data(){
  },
  mounted () {
  },
  methods: {
    toggleSideBar(){
      var opacity = document.querySelector("#sidebar").computedStyleMap().get('opacity').value
      if( opacity < 0.5 )
        anime({
          targets: '#sidebar',
          translateX: ["-100%", 0],
          opacity: 1,
        })
      else
        anime({
          targets: '#sidebar',
          translateX: [0, "100%"],
          opacity: 0,
        }) 
    },
  }
}
</script>
