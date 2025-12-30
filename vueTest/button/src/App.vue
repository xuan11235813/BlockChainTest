<template>
  <div class="container">
    <div class="content centered-content" >
      <h1><span class="double-text">Welcome to the Future of DeFi</span></h1>
      <p>The advent of Decentralized Finance, or DeFi, represents one of the most revolutionary shifts in the financial landscape since the creation of digital banking. Unlike traditional financial systems, which rely heavily on centralized institutions such as banks, investment firms, and clearinghouses, DeFi leverages blockchain technology to create a decentralized, trustless, and open ecosystem. This paradigm empowers individuals globally, providing access to financial services without intermediaries, breaking down barriers imposed by geographical location, socioeconomic status, and regulatory constraints. From the early days of peer-to-peer lending to the sophisticated smart contract-based platforms of today, DeFi continues to democratize finance, placing control directly into the hands of users and fostering unprecedented levels of transparency and efficiency.</p>
      <p>Central to DeFi’s transformative potential are smart contracts and tokenization. Smart contracts—self-executing agreements coded on blockchain networks—enable automated, transparent, and secure execution of financial transactions, from lending and borrowing to derivatives and insurance. These contracts eliminate the need for intermediaries, significantly reducing costs and operational friction. Meanwhile, tokenization of assets—from cryptocurrencies to real-world assets such as real estate and commodities—provides new avenues for liquidity and investment. Through tokenized assets, users can participate in previously inaccessible markets, fractionalize ownership, and trade assets efficiently on decentralized platforms. This innovation not only broadens participation but also introduces novel financial instruments and investment strategies previously constrained by traditional infrastructure.</p>
      <p>DeFi’s core promise lies in the democratization of financial services. In contrast to legacy financial systems that often exclude underserved populations, DeFi platforms are inherently inclusive and borderless. Anyone with an internet connection can access decentralized exchanges, lending protocols, or yield farming opportunities. This inclusivity is particularly significant for individuals in emerging markets, where banking infrastructure may be limited, and for populations historically marginalized by traditional financial institutions. By providing equitable access to sophisticated financial products, DeFi empowers users to manage, grow, and protect their wealth autonomously, fostering financial literacy, independence, and a more equitable global financial ecosystem.</p>
      <p>The future of DeFi is further strengthened by advancements in interoperability, security, and scalability. Cross-chain technologies enable seamless interactions between different blockchain networks, allowing users to transfer value and data without friction, while layer-2 scaling solutions increase transaction throughput and reduce fees. Security continues to evolve, with audit protocols, decentralized governance mechanisms, and insurance products mitigating risks inherent in smart contract-based systems. As these technologies mature, the DeFi ecosystem will become increasingly robust, resilient, and integrated, encouraging mass adoption and institutional participation. This growth will transform DeFi from a niche sector into a mainstream component of the global financial infrastructure.</p>
      <p>Looking ahead, the bright future of DeFi is characterized by financial empowerment, innovation, and sustainability. DeFi promises a world where individuals maintain sovereignty over their assets, participate in global markets, and engage in transparent, secure financial interactions. Governance tokens, decentralized autonomous organizations (DAOs), and community-driven protocols will redefine decision-making in finance, giving users an active role in shaping the ecosystem. As the technology evolves and regulatory frameworks adapt, DeFi will continue to unlock opportunities for wealth creation, financial inclusion, and innovation, paving the way for a more equitable, efficient, and vibrant financial future for all.</p>
      <p>Join the wave of financial empowerment, where your assets remain yours, and the possibilities are limitless.</p>
    </div >

    <div class="button-container">
      <MyButton />
    </div>
  </div>
</template>

<script>
import MyButton from './myButton.vue'
export default {
  components: { MyButton }
}
</script>

<style>
body {
  margin: 0;
  font-family: 'Arial', sans-serif;
}
.container {
  background: linear-gradient(135deg, #ff9a9e, #fad0c4, #a18cd1, #fbc2eb);
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  color: #fff;
  padding: 50px 20px;
  box-sizing: border-box;
  position: relative;
}
.content {
  max-width: 800px;
  text-align: center;
}
.centered-content {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
}
.double-text {
  display: inline-block;
  transform: scaleX(2);
}
.content h1 {
  font-size: 48px;
  margin-bottom: 30px;
  text-shadow: 2px 2px 8px rgba(0,0,0,0.3);
}
.content p {
  font-size: 20px;
  line-height: 1.8;
  margin-bottom: 25px;
  text-shadow: 1px 1px 4px rgba(0,0,0,0.2);
}
.button-container {
  position: fixed;
  left: 20px;
  bottom: 50px;
  display: flex;
  justify-content: flex-start;
}
.toggle-btn {
  padding: 20px 40px;
  font-size: 22px;
}
</style>