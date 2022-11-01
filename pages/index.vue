<template>
  <div>
    123
    <canvas id="live2d" width="1000" height="1000" class="live2d" />
  </div>
</template>

<script>
export default {
  name: 'IndexPage',
  layout: 'LayoutMain',
  head () {
    return {
      script: [
        { src: 'https://unpkg.com/core-js-bundle@3.6.1/minified.js' },
        { src: '/src/live2dcubismcore.js' },
        { src: '/src/bundle.js' }
      ]
    }
  }
}
</script>
