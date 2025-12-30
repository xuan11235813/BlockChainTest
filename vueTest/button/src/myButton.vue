
<template>
  <button
    :class="buttonClass"
    class="toggle-btn"
    @click="handleClick"
    :disabled="connecting"
    title="Click to connect (if not connected) and toggle color"
  >
    <template v-if="account">
      {{ shortAccount }} · {{ isBlue ? 'Blue' : 'Green' }}
    </template>
    <template v-else>
      <span v-if="connecting">Connecting...</span>
      <span v-else>Connect Wallet</span>
    </template>
  </button>
</template>

<script>
import { BrowserProvider } from 'ethers'

export default {
  data() {
    return {
      isBlue: true,
      account: null,
      connecting: false,
      isConnected: false,
    }
  },
  computed: {
    buttonClass() {
      return this.isBlue ? 'bg-blue-500' : 'bg-green-500'
    },
    shortAccount() {
      if (!this.account) return ''
      return this.account.slice(0,6) + '...' + this.account.slice(-4)
    }
  },
  methods: {
    async connectWallet() {
      if (typeof window === 'undefined' || !window.ethereum) {
        alert('No Ethereum wallet detected. Please install MetaMask or another wallet.')
        return
      }

      try {
        this.connecting = true
        // Request account access
        const provider = new BrowserProvider(window.ethereum)
        await provider.send('eth_requestAccounts', [])
        const signer = await provider.getSigner()
        const address = await signer.getAddress()
        this.account = address
        this.isConnected = true
      } catch (err) {
        console.error('Wallet connection failed', err)
        alert('Failed to connect wallet: ' + (err && err.message ? err.message : err))
      } finally {
        this.connecting = false
      }
    },
    async handleClick() {
      // If not connected, try to connect first.
      if (!this.isConnected) {
        await this.connectWallet()
      }

      // Toggle color regardless of connection outcome (optional).
      this.isBlue = !this.isBlue
    }
  }
}
</script>

<style>
.toggle-btn {
  padding: 12px 24px;
  color: white;
  font-weight: 600;
  border: none;
  border-radius: 12px;
  box-shadow: 0 4px 12px rgba(0,0,0,0.2);
  cursor: pointer;
  font-family: inherit;
  font-size: 16px;
}

.toggle-btn:disabled {
  opacity: 0.7;
  cursor: progress;
}

.bg-blue-500 { background-color: #3b82f6; }
.bg-green-500 { background-color: #22c55e; }
</style>
