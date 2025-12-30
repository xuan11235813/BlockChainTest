<template>
  <div class="container">
    <h1>Loan App</h1>
    <button @click="connectWallet" class="connect-btn">Connect Wallet</button>
    <p v-if="address">Connected: {{ address }}</p>
  </div>
</template>

<script>
import { ethers } from "ethers";
import Web3Modal from "web3modal";
import WalletConnectProvider from "@walletconnect/web3-provider";

export default {
  name: "WalletConnect",
  data() {
    return {
      provider: null,
      signer: null,
      address: null,
      web3Modal: null,
    };
  },
  mounted() {
    this.web3Modal = new Web3Modal({
      cacheProvider: true,
      providerOptions: {
        walletconnect: {
          package: WalletConnectProvider,
          options: {
            infuraId: "YOUR_INFURA_PROJECT_ID", // Replace with your Infura ID
          },
        },
      },
    });
  },
  methods: {
    async connectWallet() {
      try {
        const instance = await this.web3Modal.connect();
        this.provider = new ethers.BrowserProvider(instance);
        this.signer = await this.provider.getSigner();
        this.address = await this.signer.getAddress();
      } catch (err) {
        console.error("Wallet connection failed:", err);
      }
    },
  },
};
</script>

<style>
/* Center container */
.container {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  height: 100vh;
  font-family: Arial, sans-serif;
}

/* Button styling */
.connect-btn {
  padding: 12px 24px;
  font-size: 16px;
  background-color: #007bff;
  color: white;
  border: none;
  border-radius: 8px;
  cursor: pointer;
  margin-top: 12px;
}

.connect-btn:hover {
  background-color: #0056b3;
}

/* Wallet address text */
p {
  margin-top: 12px;
  font-size: 14px;
  color: #333;
}
</style>
