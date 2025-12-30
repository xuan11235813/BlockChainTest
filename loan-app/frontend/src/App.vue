<template>
  <WalletConnect />
</template>

<script>
import WalletConnect from './components/WalletConnect.vue'

export default {
  name: 'App',
  components: {
    WalletConnect
  }
}
</script>

<style>
/* Ensure the app takes full height */
html, body, #app {
  height: 100%;
  margin: 0;
  padding: 0;
}
</style>
