<template>
  <div class="fixed top-5 left-5 bg-white/70 rounded-md p-2 cursor-pointer z-50 select-none
              outline outline-1 outline-gray-200"
       @click="toggleSideBar()">
    <img alt="ListIcon" src="/images/list.png" style="height: 25px;">
  </div>
  <div id="sidebar"
       class="fixed top-0 h-screen bg-gray-100 z-40 select-none
              lg:w-1/4 md:w-1/3 sm:w-1/2 w-screen opacity-0 -translate-x-full">
      <div class="h-20 border-b-2 border-gray-200">
      </div>
      <div>
        <NuxtLink to="/">
          <div class="cursor-pointer p-5">
          <img alt="HomeIcon" src="/images/home.png" class="h-6 inline-block">
            <span class="ml-5">Home</span>
          </div>
        </NuxtLink>

        <NuxtLink to="/guide">
          <div class="cursor-pointer p-5">
            <img alt="GuideIcon" src="/images/guide.png" class="h-6 inline-block">
            <span class="ml-5">Documentation</span>
          </div>
        </NuxtLink>

        <div class="cursor-pointer p-5" onclick="window.location.href='https://drive.aimmalab.com'">
          <img alt="DriveIcon" src="/images/drive.png" class="h-6 inline-block">
          <span class="ml-5">Drive</span>
        </div>
        <div class="cursor-pointer p-5" onclick="window.location.href='https://rancher.aimmalab.com'">
          <img alt="RancherIcon" src="/images/rancher.png" class="h-6 inline-block">
          <span class="ml-5">Rancher</span>
        </div>
      </div>
  </div>
</template>

<script>
import anime from 'animejs'

export default {
  data(){
    return {
      
    }
  },
  mounted () {
  },
  methods: {
    toggleSideBar(){
      const opacity = document.querySelector("#sidebar").computedStyleMap().get('opacity').value
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
