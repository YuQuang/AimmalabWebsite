<template>
  <div class="fixed md:w-1/2 text-center z-20 md:right-20 md:left-auto md:top-5 top-3 inset-x-5 rounded-full bg-black/70 p-2">
    <div class="grid grid-cols-4 text-md font-bold gap-6 text-slate-100">
      <div v-for="listItem, index in MenuList" :key="index">
        <NuxtLink v-if="listItem.isNuxtLink" :to="listItem.link">
          <div class="cursor-pointer">
            <span class="align-middle">{{ listItem.name }}</span>
          </div>
        </NuxtLink>
        <a v-if="!listItem.isNuxtLink" :href="listItem.link">
          <div class="cursor-pointer">
            <span class="align-middle">{{ listItem.name }}</span>
          </div>
        </a>
      </div>
    </div>
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
      MenuList: [
        {
          name: 'HOME',
          link: '/',
          isNuxtLink: true
        },
        {
          name: 'DRIVE',
          link: 'https://drive.aimmalab.com/',
          isNuxtLink: false
        },
        {
          name: 'VPN',
          link: 'https://vpn.aimmalab.com/',
          isNuxtLink: false
        },
        {
          name: 'PROPERTY',
          link: 'https://property.aimmalab.com/',
          isNuxtLink: false
        }
      ]
    }
  },
  mounted () {
  },
  methods: {
  }
}
</script>
