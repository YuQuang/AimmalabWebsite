<template>
  <div
    class="w-full h-72 shadow-md hover:drop-shadow-xl duration-200 hover:-translate-y-1 hover:-translate-x-1 p-5"
    :class="[ bgColor ]"
  >
    <img :alt="iconImg" v-if="iconImg != ''" :src="iconImg" class="mx-auto mt-5" style="height: 100px;">
    <div class="font-bold text-2xl text-center mt-4">
      {{ jarTitle }}
    </div>
    <div class="text-ls text-center mt-4 Ellipsis break-words">
      {{ jarContent }}
    </div>
  </div>
</template>

<script>
export default {
  props: {
    bgColor: {
      type: String,
      default: 'bg-slate-50'
    },
    iconImg: {
      type: String,
      default: ''
    },
    jarTitle: {
      type: String,
      default: 'default title'
    },
    jarContent: {
      type: String,
      default: 'default content'
    }
  }
}
</script>
