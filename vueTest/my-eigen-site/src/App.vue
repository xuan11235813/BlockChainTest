<template>
  <div id="app" width=100%>
    <!-- 导航栏 -->
    <nav class="navbar" :class="{ 'scrolled': scrolled }">
      <div class="nav-container">
        <div class="logo">
          <img src="/eigen-logo.svg" alt="Eigen Logo" class="logo-img" />
          <span class="logo-text">Hong Kong Eigen Technology</span>
        </div>
        <ul class="nav-menu">
          <li v-for="(item, index) in navItems" :key="index" 
              :class="{ 'active': currentSection === item.id }">
            <a href="#" @click.prevent="scrollToSection(item.id)">{{ item.name }}</a>
          </li>
        </ul>
      </div>
    </nav>

    <!-- 全屏页面容器 -->
    <div class="sections-container" ref="sectionsContainer">
      <!-- Home 页面 -->
      <section id="home" class="section home-section">
        <div class="content">
            <div class="home-content">
              <div class="home-text">
                <h1 class="hero-title">Welcome to Eigen Technologies</h1>
                <p class="hero-subtitle">Pioneering the Verified Compute Revolution</p>
                <div class="hero-description">
                  <p>We merge the high performance of cloud computing with the unparalleled security and trust of blockchain, building next-generation DeFi and DApp solutions powered by EigenCloud.</p>
                </div>
                <div class="cta-buttons">
                  <a href="#services" @click.prevent="scrollToSection('services')" class="cta-button primary">
                    Explore Our Services
                    <span class="arrow-right">→</span>
                  </a>
                  <a href="#contact" @click.prevent="scrollToSection('contact')" class="cta-button secondary">
                    Get in Touch
                  </a>
                </div>
                <div class="home-stats">
                  <div class="stat-item">
                    <div class="stat-number">8+</div>
                    <div class="stat-label">Years Experience</div>
                  </div>
                  <div class="stat-item">
                    <div class="stat-number">50+</div>
                    <div class="stat-label">Projects Delivered</div>
                  </div>
                  <div class="stat-item">
                    <div class="stat-number">100M+</div>
                    <div class="stat-label">Users Reached</div>
                  </div>
                  <div class="stat-item">
                    <div class="stat-number">20+</div>
                    <div class="stat-label">Countries Served</div>
                  </div>
                </div>
              </div>
            </div>
        </div>
      </section>

      <!-- About 页面 -->
      <section id="about" class="section about-section">
        <div class="content">
          <h1>About Us</h1>
          <p class="section-subtitle">Driving Innovation at the Intersection of Finance and Technology</p>
          
          <div class="about-content">
            <!-- Company Introduction -->
            <div class="about-intro">
              <p>Founded in 2016, Eigen Technologies brings together a team of brilliant minds from prestigious institutions including Tongji University, Technical University of Munich (TUM), and RWTH Aachen University. Our diverse academic backgrounds create a unique synergy that drives innovation at the intersection of finance and technology.</p>
            </div>
            
            <!-- Mission, Vision, Values -->
            <div class="mission-vision-values">
              <div class="mv-item">
                <div class="mv-icon">🎯</div>
                <h3>Our Mission</h3>
                <p>To revolutionize the digital economy by building secure, scalable, and verifiable blockchain solutions.</p>
              </div>
              <div class="mv-item">
                <div class="mv-icon">🌟</div>
                <h3>Our Vision</h3>
                <p>To become the global leader in verified compute technology.</p>
              </div>
              <div class="mv-item">
                <div class="mv-icon">💡</div>
                <h3>Our Values</h3>
                <div class="values-list">
                  <span>Innovation</span>
                  <span>Integrity</span>
                  <span>Excellence</span>
                  <span>Collaboration</span>
                  <span>Security</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Services 页面 -->
      <section id="services" class="section services-section">
        <div class="content">
            <h1>Our Services</h1>
            <p class="section-subtitle">From protocol design to full DApp delivery — we cover the full stack.</p>
            
            <div class="services-grid">
                <div class="service-item">
                    <div class="service-icon">📊</div>
                    <h3>DeFi Solutions</h3>
                    <p>We design and develop comprehensive DeFi protocols that are secure, scalable, and user-friendly.</p>
                    <a class="service-link" @click.prevent="scrollToSection('cases')">
                        Learn More
                        <span class="arrow-right">→</span>
                    </a>
                </div>

                <div class="service-item">
                    <div class="service-icon">🔒</div>
                    <h3>Smart Contract Development</h3>
                    <p>We build robust and secure smart contracts with a security-first approach.</p>
                    <a class="service-link" @click.prevent="scrollToSection('technologies')">
                        Learn More
                        <span class="arrow-right">→</span>
                    </a>
                </div>

                <div class="service-item">
                    <div class="service-icon">💻</div>
                    <h3>DApp Development</h3>
                    <p>We create intuitive and engaging decentralized applications for Web3.</p>
                    <a class="service-link" @click.prevent="scrollToSection('contact')">
                        Learn More
                        <span class="arrow-right">→</span>
                    </a>
                </div>
            </div>
            
            <!-- Service Process -->
            <div class="service-process">
                <h2>Our Development Process</h2>
                <div class="process-steps">
                    <div class="process-step">
                        <div class="process-number">1</div>
                        <h3>Discovery</h3>
                        <p>Understand requirements and define scope.</p>
                    </div>
                    <div class="process-step">
                        <div class="process-number">2</div>
                        <h3>Design</h3>
                        <p>Create system architecture and specifications.</p>
                    </div>
                    <div class="process-step">
                        <div class="process-number">3</div>
                        <h3>Development</h3>
                        <p>Implement with rigorous testing.</p>
                    </div>
                    <div class="process-step">
                        <div class="process-number">4</div>
                        <h3>Deployment</h3>
                        <p>Deploy and provide ongoing support.</p>
                    </div>
                </div>
            </div>
        </div>
        </section>

      <section id="technologies" class="section technologies-section">
        <div class="content">
            <h1>Technologies</h1>
            <p class="section-subtitle">We work with the major L1/L2 ecosystems, developer tools, and security frameworks.</p>
            
            <!-- Technology Categories -->
            <div class="tech-categories">
                <div class="tech-categories-inner">
                    <!-- Layer 1 & 2 Blockchains -->
                    <div class="tech-category">
                        <h2 class="category-title">
                            <span class="category-icon">🔗</span>
                            Layer 1 & 2
                        </h2>
                        <div class="tech-grid">
                            <div class="tech-item">
                                <div class="tech-icon">⛓️</div>
                                <h3>Ethereum</h3>
                                <p>Smart contract platform</p>
                            </div>
                            <div class="tech-item">
                                <div class="tech-icon">🔷</div>
                                <h3>Polygon</h3>
                                <p>Layer 2 scaling</p>
                            </div>
                            <div class="tech-item">
                                <div class="tech-icon">🟠</div>
                                <h3>BNB Chain</h3>
                                <p>High-performance</p>
                            </div>
                            <div class="tech-item">
                                <div class="tech-icon">⚡</div>
                                <h3>Solana</h3>
                                <p>High-speed, low-cost</p>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Smart Contract Development -->
                    <div class="tech-category">
                        <h2 class="category-title">
                            <span class="category-icon">💻</span>
                            Smart Contracts
                        </h2>
                        <div class="tech-grid">
                            <div class="tech-item">
                                <div class="tech-icon">📝</div>
                                <h3>Solidity</h3>
                                <p>Ethereum smart contracts</p>
                            </div>
                            <div class="tech-item">
                                <div class="tech-icon">🦀</div>
                                <h3>Rust</h3>
                                <p>Secure contract development</p>
                            </div>
                            <div class="tech-item">
                                <div class="tech-icon">🛠️</div>
                                <h3>Hardhat</h3>
                                <p>Ethereum development</p>
                            </div>
                            <div class="tech-item">
                                <div class="tech-icon">📦</div>
                                <h3>OpenZeppelin</h3>
                                <p>Smart contract libraries</p>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Web3 Development -->
                    <div class="tech-category">
                        <h2 class="category-title">
                            <span class="category-icon">🌐</span>
                            Web3 Development
                        </h2>
                        <div class="tech-grid">
                            <div class="tech-item">
                                <div class="tech-icon">🔌</div>
                                <h3>Ethers.js</h3>
                                <p>Ethereum JavaScript API</p>
                            </div>
                            <div class="tech-item">
                                <div class="tech-icon">🔗</div>
                                <h3>WalletConnect</h3>
                                <p>Multi-chain wallet connection</p>
                            </div>
                            <div class="tech-item">
                                <div class="tech-icon">🗄️</div>
                                <h3>IPFS</h3>
                                <p>Decentralized storage</p>
                            </div>
                            <div class="tech-item">
                                <div class="tech-icon">📱</div>
                                <h3>React</h3>
                                <p>Web3 UI development</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </section>

      <!-- Cases 页面 -->
      <section id="cases" class="section cases-section">
        <div class="content">
            <h1>Case Studies</h1>
            <p class="section-subtitle">Real-world solutions we've built for our clients</p>
            
            <div class="cases-container">
                <div class="cases-container-inner">
                    <!-- Case 1 -->
                    <div class="case-card">
                        <div class="case-icon">📱</div>
                        <h3>DeFi Yield Farming DApp</h3>
                        <p class="case-category">DApp Development</p>
                        <p class="case-description">Developed a comprehensive DeFi yield farming platform.</p>
                        
                        <div class="case-results">
                            <h4>Results</h4>
                            <ul>
                                <li>100,000+ users</li>
                                <li>$50M+ TVL</li>
                            </ul>
                        </div>
                    </div>

                    <!-- Case 2 -->
                    <div class="case-card">
                        <div class="case-icon">⚡</div>
                        <h3>Multi-Signature Wallet</h3>
                        <p class="case-category">Smart Contract Development</p>
                        <p class="case-description">Secure multi-signature wallet for DAO treasury management.</p>
                        
                        <div class="case-results">
                            <h4>Results</h4>
                            <ul>
                                <li>Secured $100M+ assets</li>
                                <li>20+ DAOs</li>
                            </ul>
                        </div>
                    </div>

                    <!-- Case 3 -->
                    <div class="case-card">
                        <div class="case-icon">🔗</div>
                        <h3>Supply Chain Blockchain</h3>
                        <p class="case-category">Consortium Blockchain</p>
                        <p class="case-description">Private consortium blockchain for supply chain tracking.</p>
                        
                        <div class="case-results">
                            <h4>Results</h4>
                            <ul>
                                <li>40% reduced delays</li>
                                <li>95% improved accuracy</li>
                            </ul>
                        </div>
                    </div>

                    <!-- Case 4 -->
                    <div class="case-card">
                        <div class="case-icon">🎮</div>
                        <h3>Blockchain Gaming Platform</h3>
                        <p class="case-category">Web3 Game Development</p>
                        <p class="case-description">Blockchain gaming platform with play-to-earn mechanics.</p>
                        
                        <div class="case-results">
                            <h4>Results</h4>
                            <ul>
                                <li>500,000+ users</li>
                                <li>$15M+ NFT volume</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </section>

      <!-- Team 页面 -->
      <section id="team" class="section team-section">
        <div class="content">
          <h1>Our Team</h1>
          <p class="section-subtitle">Diverse expertise from around the globe</p>
          <p>Our team of professionals brings together expertise from various industries and technical backgrounds to deliver exceptional results. We're passionate about blockchain technology and committed to building the future of decentralized finance.</p>
          
          <div class="team-grid">
            <div class="team-grid-inner">
            <!-- Team Member 1 -->
            <div class="team-member">
              <div class="member-image">
                <img src="https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&h=400&q=80" alt="Thomas Lee" class="member-portrait">
                <div class="member-social">
                  <a href="#" class="social-link" aria-label="LinkedIn">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 16 16">
                      <path d="M0 1.146C0 .513.526 0 1.175 0h13.65C15.474 0 16 .513 16 1.146v13.708c0 .633-.526 1.146-1.175 1.146H1.175C.526 16 0 15.487 0 14.854V1.146zm4.943 12.248V6.169H2.542v7.225h2.401zm-1.2-8.212c.837 0 1.358-.554 1.358-1.248-.015-.709-.52-1.248-1.342-1.248-.822 0-1.359.54-1.359 1.248 0 .694.521 1.248 1.327 1.248h.016zm4.908 8.212V9.359c0-.216.016-.432.08-.586.173-.431.568-.878 1.232-.878.869 0 1.216.662 1.216 1.634v3.865h2.401V9.25c0-2.22-1.184-3.252-2.764-3.252-1.274 0-1.845.7-2.165 1.193v.025h-.016a5.54 5.54 0 0 1 .016-.025V6.169h-2.4c.03.678 0 7.225 0 7.225h2.4z"/>
                    </svg>
                  </a>
                  <a href="#" class="social-link" aria-label="Twitter">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 16 16">
                      <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
                    </svg>
                  </a>
                  <a href="#" class="social-link" aria-label="GitHub">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 16 16">
                      <path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.012 8.012 0 0 0 16 8c0-4.42-3.58-8-8-8z"/>
                    </svg>
                  </a>
                </div>
              </div>
              <h3>Thomas Lee</h3>
              <p class="member-title">CEO & Founder</p>
              <p class="member-bio">With over 15 years of experience in fintech and blockchain, Thomas founded Eigen Technologies with a vision to bridge traditional finance and decentralized technologies. He holds a PhD in Computer Science from TUM.</p>
            </div>
            
            <!-- Team Member 2 -->
            <div class="team-member">
              <div class="member-image">
                <img src="https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&h=400&q=80" alt="Luis Chen" class="member-portrait">
                <div class="member-social">
                  <a href="#" class="social-link" aria-label="LinkedIn">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 16 16">
                      <path d="M0 1.146C0 .513.526 0 1.175 0h13.65C15.474 0 16 .513 16 1.146v13.708c0 .633-.526 1.146-1.175 1.146H1.175C.526 16 0 15.487 0 14.854V1.146zm4.943 12.248V6.169H2.542v7.225h2.401zm-1.2-8.212c.837 0 1.358-.554 1.358-1.248-.015-.709-.52-1.248-1.342-1.248-.822 0-1.359.54-1.359 1.248 0 .694.521 1.248 1.327 1.248h.016zm4.908 8.212V9.359c0-.216.016-.432.08-.586.173-.431.568-.878 1.232-.878.869 0 1.216.662 1.216 1.634v3.865h2.401V9.25c0-2.22-1.184-3.252-2.764-3.252-1.274 0-1.845.7-2.165 1.193v.025h-.016a5.54 5.54 0 0 1 .016-.025V6.169h-2.4c.03.678 0 7.225 0 7.225h2.401zm-1.2-8.212c.837 0 1.358-.554 1.358-1.248-.015-.709-.52-1.248-1.342-1.248-.822 0-1.359.54-1.359 1.248 0 .694.521 1.248 1.327 1.248h.016zm4.908 8.212V9.359c0-.216.016-.432.08-.586.173-.431.568-.878 1.232-.878.869 0 1.216.662 1.216 1.634v3.865h2.401V9.25c0-2.22-1.184-3.252-2.764-3.252-1.274 0-1.845.7-2.165 1.193v.025h-.016a5.54 5.54 0 0 1 .016-.025V6.169h-2.4c.03.678 0 7.225 0 7.225h2.401z"/>
                    </svg>
                  </a>
                  <a href="#" class="social-link" aria-label="Twitter">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 16 16">
                      <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
                    </svg>
                  </a>
                  <a href="#" class="social-link" aria-label="GitHub">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 16 16">
                      <path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.012 8.012 0 0 0 16 8c0-4.42-3.58-8-8-8z"/>
                    </svg>
                  </a>
                </div>
              </div>
              <h3>Luis Chen</h3>
              <p class="member-title">CTO</p>
              <p class="member-bio">Luis is a blockchain architect with expertise in smart contract development and distributed systems. He leads our technical team in building scalable and secure blockchain solutions for enterprise clients.</p>
            </div>
            
            <!-- Team Member 3 -->
            <div class="team-member">
              <div class="member-image">
                <img src="https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&h=400&q=80" alt="Eddie Cao" class="member-portrait">
                <div class="member-social">
                  <a href="#" class="social-link" aria-label="LinkedIn">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 16 16">
                      <path d="M0 1.146C0 .513.526 0 1.175 0h13.65C15.474 0 16 .513 16 1.146v13.708c0 .633-.526 1.146-1.175 1.146H1.175C.526 16 0 15.487 0 14.854V1.146zm4.943 12.248V6.169H2.542v7.225h2.401zm-1.2-8.212c.837 0 1.358-.554 1.358-1.248-.015-.709-.52-1.248-1.342-1.248-.822 0-1.359.54-1.359 1.248 0 .694.521 1.248 1.327 1.248h.016zm4.908 8.212V9.359c0-.216.016-.432.08-.586.173-.431.568-.878 1.232-.878.869 0 1.216.662 1.216 1.634v3.865h2.401V9.25c0-2.22-1.184-3.252-2.764-3.252-1.274 0-1.845.7-2.165 1.193v.025h-.016a5.54 5.54 0 0 1 .016-.025V6.169h-2.4c.03.678 0 7.225 0 7.225h2.401zm-1.2-8.212c.837 0 1.358-.554 1.358-1.248-.015-.709-.52-1.248-1.342-1.248-.822 0-1.359.54-1.359 1.248 0 .694.521 1.248 1.327 1.248h.016zm4.908 8.212V9.359c0-.216.016-.432.08-.586.173-.431.568-.878 1.232-.878.869 0 1.216.662 1.216 1.634v3.865h2.401V9.25c0-2.22-1.184-3.252-2.764-3.252-1.274 0-1.845.7-2.165 1.193v.025h-.016a5.54 5.54 0 0 1 .016-.025V6.169h-2.4c.03.678 0 7.225 0 7.225h2.401z"/>
                    </svg>
                  </a>
                  <a href="#" class="social-link" aria-label="Twitter">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 16 16">
                      <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
                    </svg>
                  </a>
                  <a href="#" class="social-link" aria-label="GitHub">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 16 16">
                      <path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.012 8.012 0 0 0 16 8c0-4.42-3.58-8-8-8z"/>
                    </svg>
                  </a>
                </div>
              </div>
              <h3>Eddie Cao</h3>
              <p class="member-title">Cofounder & CFO</p>
              <p class="member-bio">Eddie brings over 10 years of financial expertise to Eigen Technologies. He has worked with numerous fintech startups and traditional financial institutions, specializing in blockchain economics and tokenomics design.</p>
            </div>
            
            <!-- Team Member 4 -->
            <div class="team-member">
              <div class="member-image">
                <img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&h=400&q=80" alt="Sarah Zhang" class="member-portrait">
                <div class="member-social">
                  <a href="#" class="social-link" aria-label="LinkedIn">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 16 16">
                      <path d="M0 1.146C0 .513.526 0 1.175 0h13.65C15.474 0 16 .513 16 1.146v13.708c0 .633-.526 1.146-1.175 1.146H1.175C.526 16 0 15.487 0 14.854V1.146zm4.943 12.248V6.169H2.542v7.225h2.401zm-1.2-8.212c.837 0 1.358-.554 1.358-1.248-.015-.709-.52-1.248-1.342-1.248-.822 0-1.359.54-1.359 1.248 0 .694.521 1.248 1.327 1.248h.016zm4.908 8.212V9.359c0-.216.016-.432.08-.586.173-.431.568-.878 1.232-.878.869 0 1.216.662 1.216 1.634v3.865h2.401V9.25c0-2.22-1.184-3.252-2.764-3.252-1.274 0-1.845.7-2.165 1.193v.025h-.016a5.54 5.54 0 0 1 .016-.025V6.169h-2.4c.03.678 0 7.225 0 7.225h2.401z"/>
                    </svg>
                  </a>
                  <a href="#" class="social-link" aria-label="Twitter">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 16 16">
                      <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
                    </svg>
                  </a>
                  <a href="#" class="social-link" aria-label="GitHub">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 16 16">
                      <path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.012 8.012 0 0 0 16 8c0-4.42-3.58-8-8-8z"/>
                    </svg>
                  </a>
                </div>
              </div>
              <h3>Sarah Zhang</h3>
              <p class="member-title">Head of Operations</p>
              <p class="member-bio">Sarah has extensive experience in project management and operations for blockchain startups. She ensures our projects are delivered on time and within budget, while maintaining the highest quality standards.</p>
            </div>
            
            <!-- Team Member 5 -->
            <div class="team-member">
              <div class="member-image">
                <img src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&h=400&q=80" alt="Mike Johnson" class="member-portrait">
                <div class="member-social">
                  <a href="#" class="social-link" aria-label="LinkedIn">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 16 16">
                      <path d="M0 1.146C0 .513.526 0 1.175 0h13.65C15.474 0 16 .513 16 1.146v13.708c0 .633-.526 1.146-1.175 1.146H1.175C.526 16 0 15.487 0 14.854V1.146zm4.943 12.248V6.169H2.542v7.225h2.401zm-1.2-8.212c.837 0 1.358-.554 1.358-1.248-.015-.709-.52-1.248-1.342-1.248-.822 0-1.359.54-1.359 1.248 0 .694.521 1.248 1.327 1.248h.016zm4.908 8.212V9.359c0-.216.016-.432.08-.586.173-.431.568-.878 1.232-.878.869 0 1.216.662 1.216 1.634v3.865h2.401V9.25c0-2.22-1.184-3.252-2.764-3.252-1.274 0-1.845.7-2.165 1.193v.025h-.016a5.54 5.54 0 0 1 .016-.025V6.169h-2.4c.03.678 0 7.225 0 7.225h2.401z"/>
                    </svg>
                  </a>
                  <a href="#" class="social-link" aria-label="Twitter">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 16 16">
                      <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
                    </svg>
                  </a>
                  <a href="#" class="social-link" aria-label="GitHub">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 16 16">
                      <path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.012 8.012 0 0 0 16 8c0-4.42-3.58-8-8-8z"/>
                    </svg>
                  </a>
                </div>
              </div>
              <h3>Mike Johnson</h3>
              <p class="member-title">Lead Blockchain Developer</p>
              <p class="member-bio">Mike is a senior blockchain developer with expertise in Ethereum, Solana, and Polygon. He has built numerous smart contracts and DApps, and leads our technical team in developing cutting-edge blockchain solutions.</p>
            </div>
            
            <!-- Team Member 6 -->
            <div class="team-member">
              <div class="member-image">
                <img src="https://images.unsplash.com/photo-1580489944761-15a19d654956?ixlib=rb-4.0.3&auto=format&fit=crop&w=400&h=400&q=80" alt="Emily Davis" class="member-portrait">
                <div class="member-social">
                  <a href="#" class="social-link" aria-label="LinkedIn">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 16 16">
                      <path d="M0 1.146C0 .513.526 0 1.175 0h13.65C15.474 0 16 .513 16 1.146v13.708c0 .633-.526 1.146-1.175 1.146H1.175C.526 16 0 15.487 0 14.854V1.146zm4.943 12.248V6.169H2.542v7.225h2.401zm-1.2-8.212c.837 0 1.358-.554 1.358-1.248-.015-.709-.52-1.248-1.342-1.248-.822 0-1.359.54-1.359 1.248 0 .694.521 1.248 1.327 1.248h.016zm4.908 8.212V9.359c0-.216.016-.432.08-.586.173-.431.568-.878 1.232-.878.869 0 1.216.662 1.216 1.634v3.865h2.401V9.25c0-2.22-1.184-3.252-2.764-3.252-1.274 0-1.845.7-2.165 1.193v.025h-.016a5.54 5.54 0 0 1 .016-.025V6.169h-2.4c.03.678 0 7.225 0 7.225h2.401z"/>
                    </svg>
                  </a>
                  <a href="#" class="social-link" aria-label="Twitter">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 16 16">
                      <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
                    </svg>
                  </a>
                  <a href="#" class="social-link" aria-label="GitHub">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" viewBox="0 0 16 16">
                      <path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.012 8.012 0 0 0 16 8c0-4.42-3.58-8-8-8z"/>
                    </svg>
                  </a>
                </div>
              </div>
              <h3>Emily Davis</h3>
              <p class="member-title">UX/UI Designer</p>
              <p class="member-bio">Emily is a creative UX/UI designer with expertise in Web3 interfaces. She creates intuitive and engaging user experiences for our DApps, ensuring they are both functional and visually appealing.</p>
            </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Contact 页面 -->
      <section id="contact" class="section contact-section">
        <div class="content">
          <h1>Contact Us</h1>
          <p class="section-subtitle">Get in touch with our team for partnership opportunities or technical inquiries</p>
          
          <div class="contact-container">
            <!-- Contact Form -->
            <div class="contact-form-container">
              <h2>Send Us a Message</h2>
              <form class="contact-form">
                <div class="form-row">
                  <div class="form-group">
                    <label for="name">Your Name</label>
                    <input type="text" id="name" name="name" placeholder="Enter your name" required>
                  </div>
                  <div class="form-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" placeholder="Enter your email" required>
                  </div>
                </div>
                
                <div class="form-group">
                  <label for="subject">Subject</label>
                  <input type="text" id="subject" name="subject" placeholder="Enter subject" required>
                </div>
                
                <div class="form-group">
                  <label for="message">Your Message</label>
                  <textarea id="message" name="message" rows="6" placeholder="Enter your message" required></textarea>
                </div>
                
                <button type="submit" class="submit-btn">
                  Send Message
                  <span class="btn-arrow">→</span>
                </button>
              </form>
            </div>
            
            <!-- Contact Information -->
            <div class="contact-details">
              <!-- Contact Info -->
              <div class="contact-info">
                <h2>Contact Information</h2>
                <div class="contact-item">
                  <div class="contact-icon">📍</div>
                  <div class="contact-text">
                    <h3>Address</h3>
                    <p>123 Innovation Drive, Tech City, TC 10101</p>
                    <p>Hong Kong SAR, China</p>
                  </div>
                </div>
                <div class="contact-item">
                  <div class="contact-icon">📞</div>
                  <div class="contact-text">
                    <h3>Phone</h3>
                    <p>+852 1234 5678 (Hong Kong)</p>
                    <p>+1 (555) 123-4567 (International)</p>
                  </div>
                </div>
                <div class="contact-item">
                  <div class="contact-icon">✉️</div>
                  <div class="contact-text">
                    <h3>Email</h3>
                    <p>info@eigentech.com</p>
                    <p>support@eigentech.com</p>
                  </div>
                </div>
                <div class="contact-item">
                  <div class="contact-icon">⏰</div>
                  <div class="contact-text">
                    <h3>Working Hours</h3>
                    <p>Monday - Friday: 9:00 AM - 6:00 PM HKT</p>
                    <p>Saturday - Sunday: Closed</p>
                  </div>
                </div>
              </div>
              
              <!-- Social Media -->
              <div class="contact-social">
                <h2>Follow Us</h2>
                <div class="social-links">
                  <a href="#" class="social-link" aria-label="LinkedIn">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" viewBox="0 0 16 16">
                      <path d="M0 1.146C0 .513.526 0 1.175 0h13.65C15.474 0 16 .513 16 1.146v13.708c0 .633-.526 1.146-1.175 1.146H1.175C.526 16 0 15.487 0 14.854V1.146zm4.943 12.248V6.169H2.542v7.225h2.401zm-1.2-8.212c.837 0 1.358-.554 1.358-1.248-.015-.709-.52-1.248-1.342-1.248-.822 0-1.359.54-1.359 1.248 0 .694.521 1.248 1.327 1.248h.016zm4.908 8.212V9.359c0-.216.016-.432.08-.586.173-.431.568-.878 1.232-.878.869 0 1.216.662 1.216 1.634v3.865h2.401V9.25c0-2.22-1.184-3.252-2.764-3.252-1.274 0-1.845.7-2.165 1.193v.025h-.016a5.54 5.54 0 0 1 .016-.025V6.169h-2.4c.03.678 0 7.225 0 7.225h2.401zm-1.2-8.212c.837 0 1.358-.554 1.358-1.248-.015-.709-.52-1.248-1.342-1.248-.822 0-1.359.54-1.359 1.248 0 .694.521 1.248 1.327 1.248h.016zm4.908 8.212V9.359c0-.216.016-.432.08-.586.173-.431.568-.878 1.232-.878.869 0 1.216.662 1.216 1.634v3.865h2.401V9.25c0-2.22-1.184-3.252-2.764-3.252-1.274 0-1.845.7-2.165 1.193v.025h-.016a5.54 5.54 0 0 1 .016-.025V6.169h-2.4c.03.678 0 7.225 0 7.225h2.401z"/>
                    </svg>
                  </a>
                  <a href="#" class="social-link" aria-label="Twitter">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" viewBox="0 0 16 16">
                      <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
                    </svg>
                  </a>
                  <a href="#" class="social-link" aria-label="GitHub">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" viewBox="0 0 16 16">
                      <path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.012 8.012 0 0 0 16 8c0-4.42-3.58-8-8-8z"/>
                    </svg>
                  </a>
                  <a href="#" class="social-link" aria-label="Discord">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" viewBox="0 0 16 16">
                      <path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.012 8.012 0 0 0 16 8c0-4.42-3.58-8-8-8z"/>
                    </svg>
                  </a>
                </div>
              </div>
              
              <!-- Map -->
              <div class="map-container">
                <h2>Visit Our Office</h2>
                <div class="map-placeholder">
                  <div class="map-icon">🗺️</div>
                  <p>Interactive Map Integration</p>
                  <p class="map-note">123 Innovation Drive, Tech City, TC 10101</p>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

      <!-- Privacy 页面 -->
      <section id="privacy" class="section privacy-section-page">
        <div class="content">
          <h1>Privacy Policy</h1>
          <p class="section-subtitle">Last Updated: December 16, 2024</p>
          
          <div class="privacy-content">
            <div class="privacy-intro">
              <p>At Eigen Technologies, we are committed to protecting your privacy and ensuring the security of your personal information.</p>
            </div>
            
            <div class="privacy-section">
              <h3>1. Information We Collect</h3>
              <p>We collect personal information you provide and automatically collected data such as device information and usage data.</p>
            </div>
            
            <div class="privacy-section">
              <h3>2. How We Use Your Information</h3>
              <p>We use your information to provide services, process transactions, respond to inquiries, and improve our offerings.</p>
            </div>
            
            <div class="privacy-section">
              <h3>3. Information Sharing</h3>
              <p>We share information with service providers, as required by law, and in business transfers.</p>
            </div>
            
            <div class="privacy-section">
              <h3>4. Data Security</h3>
              <p>We implement industry-standard security measures to protect your information.</p>
            </div>
            
            <div class="privacy-section">
              <h3>5. Your Rights</h3>
              <p>You have rights to access, correct, and delete your personal information.</p>
            </div>
            
            <div class="privacy-section">
              <h3>6. Contact Us</h3>
              <p>For privacy-related questions, please contact us at <a href="mailto:privacy@eigentech.com" class="privacy-link">privacy@eigentech.com</a>.</p>
            </div>
          </div>
        </div>
      </section>
    </div>
  </div>
</template>

<script>
export default {
  name: 'App',
  data() {
    return {
      scrolled: false,
      currentSection: 'home',
      navItems: [
        { id: 'home', name: 'Home' },
        { id: 'about', name: 'About' },
        { id: 'services', name: 'Services' },
        { id: 'technologies', name: 'Technologies' },
        { id: 'cases', name: 'Cases' },
        { id: 'team', name: 'Team' },
        { id: 'contact', name: 'Contact' },
        { id: 'privacy', name: 'Privacy' }
      ],
      isScrolling: false,
      observer: null
    }
  },
  mounted() {
    // 监听滚动事件
    window.addEventListener('scroll', this.handleScroll)
    // 监听鼠标滚轮事件
    window.addEventListener('wheel', this.handleWheel, { passive: true })
    // 监听键盘事件
    window.addEventListener('keydown', this.handleKeydown)
    
    // 初始化Intersection Observer用于滚动动画
    this.initObserver()
  },
  beforeUnmount() {
    // 移除事件监听器
    window.removeEventListener('scroll', this.handleScroll)
    window.removeEventListener('wheel', this.handleWheel)
    window.removeEventListener('keydown', this.handleKeydown)
    
    // 断开Intersection Observer
    if (this.observer) {
      this.observer.disconnect()
    }
  },
  methods: {
    handleScroll() {
      this.scrolled = window.scrollY > 50
      
      // 检测当前处于哪个section（垂直滚动）
      const sections = document.querySelectorAll('.section')
      let current = ''
      
      sections.forEach(section => {
        const sectionTop = section.offsetTop
        const sectionHeight = section.clientHeight
        if (window.scrollY >= sectionTop - sectionHeight / 3) {
          current = section.getAttribute('id')
        }
      })
      
      this.currentSection = current
    },
    
    handleWheel(e) {
      // 不再阻止默认滚动行为，恢复正常垂直滚动
    },
    
    handleKeydown(e) {
      if (e.key === 'ArrowDown' || e.key === 'ArrowUp') {
        // 恢复默认键盘滚动行为
      }
    },
    
    scrollToSection(sectionId) {
      const section = document.getElementById(sectionId)
      if (section) {
        window.scrollTo({
          top: section.offsetTop,
          behavior: 'smooth'
        })
      }
    },
    
    scrollToIndex(index) {
      const sections = document.querySelectorAll('.section')
      if (sections[index]) {
        window.scrollTo({
          top: sections[index].offsetTop,
          behavior: 'smooth'
        })
      }
    },
    
    // 初始化Intersection Observer
    initObserver() {
      const options = {
        threshold: 0.1,
        rootMargin: '0px 0px -50px 0px'
      }
      
      this.observer = new IntersectionObserver((entries) => {
        entries.forEach(entry => {
          if (entry.isIntersecting) {
            entry.target.style.opacity = '1'
            entry.target.style.transform = 'translateY(0)'
            entry.target.style.visibility = 'visible'
          }
        })
      }, options)
      
      // 观察所有需要动画的元素
      const animatedElements = document.querySelectorAll('.service-item, .case-card, .team-member, .tech-item, .stat-item, .mv-item, .timeline-item, .expertise-item, .process-step, .contact-item')
      animatedElements.forEach(element => {
        // 设置初始状态
        element.style.opacity = '0'
        element.style.transform = 'translateY(30px)'
        element.style.visibility = 'hidden'
        element.style.transition = 'opacity 0.6s ease, transform 0.6s ease, visibility 0.6s ease'
        
        // 开始观察
        this.observer.observe(element)
      })
    }
  }
}
</script>

<style>
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html, body, #app {
  width: 100%;
  overflow-x: hidden;
}

html {
  scroll-behavior: smooth;
}

body {
  font-family: 'Arial', sans-serif;
  background-color: rgba(160, 160, 210, 0.5);
  color: white;
}

#app {
  position: relative;
  width: 100%;
  max-width:100%;
}

/* 导航栏样式 */
.navbar {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  background-color: rgba(255, 255, 255, 0.95);
  padding: 15px 0;
  z-index: 1000;
  transition: all 0.4s cubic-bezier(0.4, 0, 0.2, 1);
  box-shadow: 0 2px 20px rgba(0, 0, 0, 0.1);
  backdrop-filter: blur(10px);
}

.navbar.scrolled {
  padding: 10px 0;
  background-color: rgba(255, 255, 255, 0.98);
  box-shadow: 0 4px 30px rgba(0, 0, 0, 0.15);
}

.nav-container {
  display: flex;
  justify-content: space-between;
  align-items: center;
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 20px;
  width: 100%;
}

.logo {
  display: flex;
  align-items: center;
  gap: 12px;
  transition: transform 0.3s ease;
}

.logo:hover {
  transform: scale(1.05);
}

.logo-img {
  height: 45px;
  width: auto;
  transition: transform 0.3s ease;
}

.logo-img:hover {
  transform: rotate(5deg);
}

.logo-text {
  font-size: 1.6rem;
  font-weight: 700;
  color: #2c3e50;
  letter-spacing: -0.5px;
  background: linear-gradient(135deg, #3498db, #2980b9);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
}

.nav-menu {
  display: flex;
  list-style: none;
  gap: 35px;
  margin: 0;
  padding: 0;
}

.nav-menu li {
  position: relative;
}

.nav-menu li a {
  text-decoration: none;
  color: #34495e;
  font-weight: 600;
  font-size: 1.05rem;
  transition: all 0.3s ease;
  position: relative;
  padding: 8px 0;
  display: inline-block;
}

.nav-menu li a:hover {
  color: #3498db;
  transform: translateY(-2px);
}

.nav-menu li.active a {
  color: #3498db;
}

.nav-menu li a::after {
  content: '';
  position: absolute;
  bottom: 0;
  left: 0;
  width: 0;
  height: 3px;
  background: linear-gradient(90deg, #3498db, #2980b9);
  transition: width 0.3s ease;
  border-radius: 2px;
}

.nav-menu li a:hover::after,
.nav-menu li.active a::after {
  width: 100%;
}

/* 页面容器样式 */
.sections-container {
  width: 100%;
  margin-top: 70px;
  background-color: rgba(80, 80, 107, 0.7);
}

/* 通用section样式 - 每个板块占一屏 */
.section {
  height: 100vh;
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 10px;
  color: white;
  position: relative;
  box-sizing: border-box;
  overflow: hidden;
}

.content {
  width: 100%;
  max-width: 1200px;
  text-align: center;
  padding: 15px;
  box-sizing: border-box;
  position: relative;
  z-index: 2;
  height: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  overflow-y: hidden;
}

/* Home section background */
.home-section {
  background: linear-gradient(135deg, rgba(52, 152, 219, 0.9), rgba(41, 128, 185, 0.9)), url('/hero.png') center/cover no-repeat;
  background-attachment: fixed;
  position: relative;
  overflow: hidden;
}

.home-section::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: radial-gradient(circle at 20% 50%, rgba(255, 255, 255, 0.1) 0%, transparent 50%),
              radial-gradient(circle at 80% 20%, rgba(255, 255, 255, 0.1) 0%, transparent 50%),
              radial-gradient(circle at 40% 80%, rgba(255, 255, 255, 0.1) 0%, transparent 50%);
  z-index: 1;
}

/* Section backgrounds */
.about-section {
  background: linear-gradient(135deg, rgba(52, 73, 94, 0.9), rgba(44, 62, 80, 0.9)), url('/hero.png') center/cover no-repeat;
  background-attachment: fixed;
}

.services-section {
  background: linear-gradient(rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.3)), url('/hero.png') center/cover no-repeat;
  background-attachment: fixed;
}

/* Service Process */
.service-process {
  margin: 60px 0;
  text-align: center;
  animation: fadeInUp 1s ease-out;
}

.service-process h2 {
  font-size: 2.5rem;
  margin-bottom: 40px;
  color: #3498db;
}

.process-steps {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 30px;
  position: relative;
  padding: 40px 0;
  max-width: 1000px;
  margin: 0 auto;
}

.process-steps::before {
  content: '';
  position: absolute;
  top: 50%;
  left: 0;
  right: 0;
  height: 3px;
  background: linear-gradient(90deg, #3498db, #2980b9);
  transform: translateY(-50%);
  z-index: 1;
}

.process-step {
  background: rgba(255, 255, 255, 0.1);
  padding: 35px 25px;
  border-radius: 12px;
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.2);
  transition: all 0.3s ease;
  position: relative;
  z-index: 2;
  text-align: center;
}

.process-step:hover {
  transform: translateY(-10px);
  box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
  background: rgba(255, 255, 255, 0.15);
}

.process-number {
  background: linear-gradient(135deg, #3498db, #2980b9);
  color: white;
  width: 70px;
  height: 70px;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 2rem;
  font-weight: 800;
  margin: 0 auto 25px;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
  transition: all 0.3s ease;
}

.process-step:hover .process-number {
  transform: scale(1.1) rotate(5deg);
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
}

.process-step h3 {
  font-size: 1.4rem;
  margin-bottom: 15px;
  color: #3498db;
  font-weight: 700;
}

.process-step p {
  margin: 0;
  font-size: 1rem;
  line-height: 1.6;
  color: rgba(255, 255, 255, 0.9);
}

.content {
  width: 100%;
  max-width: 1200px;
  text-align: center;
  padding: 40px;
  box-sizing: border-box;
  position: relative;
  z-index: 2;
}

/* Section subtitle */
.section-subtitle {
  font-size: 1.5rem;
  font-style: italic;
  color: rgba(255, 255, 255, 0.8);
  margin-bottom: 40px;
}

/* Hero content styles */
.home-content {
  display: flex;
  align-items: center;
  justify-content: center;
  width: 100%;
}

/* About page styles */
.about-content {
  display: flex;
  flex-direction: column;
  gap: 60px;
  animation: fadeInUp 1s ease-out;
}

/* Mission, Vision, Values */
.mission-vision-values {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 30px;
  margin: 40px 0;
}

.mv-item {
  background: rgba(255, 255, 255, 0.1);
  padding: 30px;
  border-radius: 12px;
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.2);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.mv-item:hover {
  transform: translateY(-5px);
  box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
  background: rgba(255, 255, 255, 0.15);
}

.mv-icon {
  font-size: 3rem;
  margin-bottom: 15px;
}

.mv-item h3 {
  font-size: 1.5rem;
  margin-bottom: 15px;
  color: #3498db;
}

.values-list {
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
  justify-content: center;
  margin-top: 15px;
}

.values-list span {
  background: rgba(52, 152, 219, 0.3);
  padding: 8px 16px;
  border-radius: 20px;
  font-weight: 500;
  font-size: 0.9rem;
  border: 1px solid rgba(52, 152, 219, 0.5);
}

/* Timeline */
.timeline-section {
  margin: 60px 0;
}

.timeline-section h2 {
  font-size: 2.5rem;
  margin-bottom: 40px;
  color: #3498db;
}

.timeline {
  position: relative;
  max-width: 800px;
  margin: 0 auto;
}

.timeline::before {
  content: '';
  position: absolute;
  left: 50%;
  top: 0;
  bottom: 0;
  width: 3px;
  background: linear-gradient(to bottom, #3498db, #2980b9);
  transform: translateX(-50%);
  border-radius: 2px;
}

.timeline-item {
  display: flex;
  margin-bottom: 40px;
  position: relative;
}

.timeline-item:nth-child(odd) {
  flex-direction: row-reverse;
}

.timeline-year {
  background: linear-gradient(135deg, #3498db, #2980b9);
  color: white;
  padding: 10px 20px;
  border-radius: 50px;
  font-weight: 700;
  font-size: 1.2rem;
  min-width: 120px;
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0 20px;
  box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
  z-index: 2;
}

.timeline-content {
  background: rgba(255, 255, 255, 0.1);
  padding: 30px;
  border-radius: 12px;
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.2);
  flex: 1;
  text-align: left;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.timeline-content:hover {
  transform: translateY(-5px);
  box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
  background: rgba(255, 255, 255, 0.15);
}

.timeline-content h3 {
  color: #3498db;
  margin-bottom: 15px;
  font-size: 1.3rem;
}

/* Team Expertise */
.team-expertise {
  margin: 60px 0;
}

.team-expertise h2 {
  font-size: 2.5rem;
  margin-bottom: 40px;
  color: #3498db;
}

.expertise-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 30px;
}

.expertise-item {
  background: rgba(255, 255, 255, 0.1);
  padding: 30px;
  border-radius: 12px;
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.2);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.expertise-item:hover {
  transform: translateY(-5px);
  box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
  background: rgba(255, 255, 255, 0.15);
}

.expertise-icon {
  font-size: 3rem;
  margin-bottom: 15px;
}

.expertise-item h3 {
  font-size: 1.3rem;
  margin-bottom: 15px;
  color: #3498db;
}

.home-text {
  max-width: 800px;
  animation: fadeInUp 1s ease-out;
}

@keyframes fadeInUp {
  from {
    opacity: 0;
    transform: translateY(30px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

.hero-title {
  font-size: 4rem;
  margin-bottom: 15px;
  font-weight: 800;
  color: white;
  text-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
  letter-spacing: -1px;
  animation: slideInLeft 0.8s ease-out;
}

.hero-subtitle {
  font-size: 1.8rem;
  margin-bottom: 30px;
  font-weight: 600;
  color: rgba(255, 255, 255, 0.9);
  font-style: italic;
  animation: slideInRight 0.8s ease-out;
}

.hero-description {
  margin-bottom: 40px;
  animation: fadeIn 1s ease-out 0.3s both;
}

.hero-description p {
  font-size: 1.3rem;
  line-height: 1.8;
  margin-bottom: 20px;
  color: rgba(255, 255, 255, 0.95);
}

@keyframes fadeIn {
  from { opacity: 0; }
  to { opacity: 1; }
}

@keyframes slideInLeft {
  from {
    opacity: 0;
    transform: translateX(-50px);
  }
  to {
    opacity: 1;
    transform: translateX(0);
  }
}

@keyframes slideInRight {
  from {
    opacity: 0;
    transform: translateX(50px);
  }
  to {
    opacity: 1;
    transform: translateX(0);
  }
}

/* CTA Buttons */
.cta-buttons {
  display: flex;
  gap: 20px;
  justify-content: center;
  margin-bottom: 60px;
  flex-wrap: wrap;
  animation: fadeInUp 1s ease-out 0.5s both;
}

.cta-button {
  display: inline-flex;
  align-items: center;
  gap: 10px;
  padding: 16px 32px;
  font-size: 1.1rem;
  font-weight: 600;
  text-decoration: none;
  border-radius: 50px;
  transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
  cursor: pointer;
  box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
  border: 2px solid transparent;
}

.cta-button.primary {
  background: linear-gradient(135deg, #ffffff, #f8f9fa);
  color: #3498db;
}

.cta-button.primary:hover {
  transform: translateY(-3px);
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
  background: linear-gradient(135deg, #f8f9fa, #e9ecef);
}

.cta-button.secondary {
  background: transparent;
  color: white;
  border-color: white;
}

.cta-button.secondary:hover {
  transform: translateY(-3px);
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
  background: rgba(255, 255, 255, 0.1);
}

.arrow-right {
  transition: transform 0.3s ease;
}

.cta-button:hover .arrow-right {
  transform: translateX(5px);
}

/* Stats Section */
.home-stats {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 30px;
  margin-top: 60px;
  animation: fadeInUp 1s ease-out 0.7s both;
}

.stat-item {
  text-align: center;
  padding: 20px;
  background: rgba(255, 255, 255, 0.1);
  border-radius: 12px;
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.2);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.stat-item:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
  background: rgba(255, 255, 255, 0.15);
}

.stat-number {
  font-size: 3rem;
  font-weight: 800;
  color: white;
  margin-bottom: 5px;
  line-height: 1;
}

.stat-label {
  font-size: 1rem;
  color: rgba(255, 255, 255, 0.9);
  font-weight: 500;
  text-transform: uppercase;
  letter-spacing: 1px;
}

/* Content base styles */
.content h1 {
  font-size: 2.5rem;
  margin-bottom: 15px;
  font-weight: 700;
}

.content p {
  font-size: 1.1rem;
  line-height: 1.5;
  margin-bottom: 20px;
}

/* Technologies page styles */
.technologies-section {
  background: linear-gradient(135deg, rgba(44, 62, 80, 0.95), rgba(52, 73, 94, 0.95)), url('/hero.png') center/cover no-repeat;
  background-attachment: fixed;
  overflow: hidden;
}

.technologies-section .content {
  max-width: 1200px;
  margin: 0 auto;
  text-align: center;
  width: 100%;
}

/* 技术分类横向滚动容器 */
.tech-categories {
  position: relative;
  margin: 20px 0;
  width: 100%;
  overflow: hidden;
}

/* 横向滚动内容 */
.tech-categories-inner {
  display: flex;
  gap: 20px;
  overflow-x: auto;
  overflow-y: hidden;
  scroll-behavior: smooth;
  padding: 10px 0;
  -webkit-overflow-scrolling: touch;
  scrollbar-width: thin;
  scrollbar-color: rgba(52, 152, 219, 0.5) rgba(255, 255, 255, 0.1);
}

.tech-categories-inner::-webkit-scrollbar {
  height: 8px;
}

.tech-categories-inner::-webkit-scrollbar-track {
  background: rgba(255, 255, 255, 0.1);
  border-radius: 10px;
}

.tech-categories-inner::-webkit-scrollbar-thumb {
  background: linear-gradient(90deg, #3498db, #2980b9);
  border-radius: 10px;
}

/* 技术分类卡片 */
.tech-category {
  background: rgba(255, 255, 255, 0.05);
  padding: 30px;
  border-radius: 15px;
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.1);
  animation: fadeInUp 1s ease-out;
  min-width: 300px;
  max-width: 350px;
  flex-shrink: 0;
  transition: transform 0.3s ease;
}

.tech-category:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
}

.category-title {
  font-size: 2rem;
  color: #3498db;
  margin-bottom: 30px;
  display: flex;
  align-items: center;
  gap: 15px;
  justify-content: center;
}

.category-icon {
  font-size: 2.5rem;
}

.tech-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 25px;
  margin: 30px 0;
  width: 100%;
}

.tech-item {
  background: rgba(255, 255, 255, 0.1);
  padding: 30px 25px;
  border-radius: 12px;
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.2);
  transition: all 0.3s ease;
  text-align: center;
  position: relative;
  overflow: hidden;
}

.tech-item::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: 3px;
  background: linear-gradient(90deg, #3498db, #2980b9);
  transform: scaleX(0);
  transition: transform 0.3s ease;
}

.tech-item:hover {
  transform: translateY(-8px);
  box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
  background: rgba(255, 255, 255, 0.15);
}

.tech-item:hover::before {
  transform: scaleX(1);
}

.tech-icon {
  font-size: 3.5rem;
  margin-bottom: 15px;
  color: #3498db;
  transition: transform 0.3s ease;
}

.tech-item:hover .tech-icon {
  transform: scale(1.1) rotate(5deg);
}

.tech-item h3 {
  font-size: 1.4rem;
  margin-bottom: 10px;
  color: white;
}

.tech-item p {
  font-size: 0.95rem;
  line-height: 1.5;
  color: rgba(255, 255, 255, 0.8);
  margin: 0;
}

/* Security Practices */
.security-practices {
  margin: 60px 0 20px;
  background: rgba(255, 255, 255, 0.05);
  padding: 40px;
  border-radius: 15px;
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.1);
}

.security-practices h2 {
  font-size: 2.2rem;
  color: #3498db;
  margin-bottom: 30px;
  text-align: center;
}

.security-content {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  gap: 30px;
}

.security-item {
  background: rgba(255, 255, 255, 0.1);
  padding: 30px;
  border-radius: 12px;
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.2);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
  text-align: center;
}

.security-item:hover {
  transform: translateY(-5px);
  box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
  background: rgba(255, 255, 255, 0.15);
}

.security-icon {
  font-size: 3rem;
  margin-bottom: 15px;
  color: #3498db;
}

.security-item h3 {
  font-size: 1.3rem;
  margin-bottom: 15px;
  color: white;
}

.security-item p {
  font-size: 1rem;
  line-height: 1.5;
  color: rgba(255, 255, 255, 0.85);
  margin: 0;
}

/* TODO区域样式 */
.todo {
  margin-top: 40px;
  padding: 20px;
  background-color: rgba(255, 255, 255, 0.2);
  border-radius: 8px;
  border: 2px dashed rgba(255, 255, 255, 0.5);
  display: none;
}

.todo h3 {
  font-size: 1.2rem;
  font-weight: normal;
  font-style: italic;
}

/* 特定页面样式 */
.services-grid, .case-grid, .team-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  gap: 30px;
  margin: 40px 0;
  width: 100%;
}

.service-item, .case-item, .team-member {
  background-color: rgba(255, 255, 255, 0.1);
  padding: 30px;
  border-radius: 12px;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
  width: 100%;
  box-sizing: border-box;
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.2);
}

.service-item:hover, .case-item:hover, .team-member:hover {
  transform: translateY(-8px);
  box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
  background-color: rgba(255, 255, 255, 0.15);
}

.team-member .member-placeholder {
  width: 120px;
  height: 120px;
  border-radius: 50%;
  background-color: rgba(255, 255, 255, 0.2);
  margin: 0 auto 15px;
}

/* Team Section */
.team-section {
  background: linear-gradient(135deg, rgba(44, 62, 80, 0.95), rgba(52, 73, 94, 0.95)), url('/hero.png') center/cover no-repeat;
  background-attachment: fixed;
  overflow: hidden;
}

.team-section .content {
  max-width: 1200px;
  margin: 0 auto;
  text-align: center;
  width: 100%;
}

/* 团队成员横向滚动容器 */
.team-grid {
  position: relative;
  margin: 20px 0;
  width: 100%;
  overflow: hidden;
}

/* 横向滚动内容 */
.team-grid-inner {
  display: flex;
  gap: 20px;
  overflow-x: auto;
  overflow-y: hidden;
  scroll-behavior: smooth;
  padding: 10px 0;
  -webkit-overflow-scrolling: touch;
  scrollbar-width: thin;
  scrollbar-color: rgba(52, 152, 219, 0.5) rgba(255, 255, 255, 0.1);
}

.team-grid-inner::-webkit-scrollbar {
  height: 8px;
}

.team-grid-inner::-webkit-scrollbar-track {
  background: rgba(255, 255, 255, 0.1);
  border-radius: 10px;
}

.team-grid-inner::-webkit-scrollbar-thumb {
  background: linear-gradient(90deg, #3498db, #2980b9);
  border-radius: 10px;
}

/* 团队成员卡片 */
.team-member {
  text-align: center;
  position: relative;
  overflow: hidden;
  min-width: 280px;
  max-width: 320px;
  flex-shrink: 0;
  background: rgba(255, 255, 255, 0.1);
  padding: 30px;
  border-radius: 15px;
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.2);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.member-image {
  position: relative;
  display: inline-block;
  margin-bottom: 25px;
}

.team-member .member-portrait {
  width: 140px;
  height: 140px;
  border-radius: 50%;
  object-fit: cover;
  margin: 0 auto;
  display: block;
  box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
  transition: all 0.3s ease;
  border: 3px solid rgba(52, 152, 219, 0.5);
}

.member-image:hover .member-portrait {
  transform: scale(1.1) rotate(5deg);
  box-shadow: 0 15px 30px rgba(0, 0, 0, 0.4);
  border-color: rgba(52, 152, 219, 0.8);
}

/* Social Media Links */
.member-social {
  position: absolute;
  bottom: -50px;
  left: 50%;
  transform: translateX(-50%);
  display: flex;
  gap: 10px;
  background: rgba(52, 152, 219, 0.9);
  padding: 10px 15px;
  border-radius: 30px;
  transition: all 0.3s ease;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
  backdrop-filter: blur(10px);
}

.member-image:hover .member-social {
  bottom: -20px;
  transform: translateX(-50%) translateY(-10px);
}

.social-link {
  color: white;
  width: 35px;
  height: 35px;
  display: flex;
  align-items: center;
  justify-content: center;
  border-radius: 50%;
  transition: all 0.3s ease;
  background: rgba(255, 255, 255, 0.2);
}

.social-link:hover {
  background: rgba(255, 255, 255, 0.3);
  transform: translateY(-3px);
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.3);
}

.social-link svg {
  transition: transform 0.3s ease;
}

.social-link:hover svg {
  transform: scale(1.2);
}

/* Team Member Info */
.team-member h3 {
  font-size: 1.8rem;
  margin-bottom: 8px;
  color: white;
  font-weight: 700;
}

.member-title {
  font-size: 1.2rem;
  color: #3498db;
  margin-bottom: 15px;
  font-weight: 600;
}

.member-bio {
  font-size: 1rem;
  line-height: 1.6;
  color: rgba(255, 255, 255, 0.85);
  margin: 0;
  padding: 0 20px;
}

.tech-list {
  text-align: left;
  max-width: 500px;
  margin: 30px auto;
}

.tech-list li {
  margin-bottom: 10px;
  font-size: 1.1rem;
}

/* Contact Section */
.contact-section {
  background: linear-gradient(135deg, rgba(52, 152, 219, 0.9), rgba(41, 128, 185, 0.9)), url('/hero.png') center/cover no-repeat;
  background-attachment: fixed;
}

.contact-container {
  display: grid;
  grid-template-columns: 1fr 400px;
  gap: 40px;
  margin-top: 40px;
  align-items: start;
}

/* Contact Form */
.contact-form-container {
  background: rgba(255, 255, 255, 0.1);
  padding: 40px;
  border-radius: 15px;
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.2);
  animation: fadeInUp 1s ease-out;
}

.contact-form-container h2 {
  color: #3498db;
  margin-bottom: 30px;
  font-size: 2rem;
}

.contact-form {
  display: flex;
  flex-direction: column;
  gap: 20px;
}

.form-row {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 20px;
}

.form-group {
  display: flex;
  flex-direction: column;
  gap: 8px;
}

.form-group label {
  font-weight: 600;
  color: rgba(255, 255, 255, 0.9);
  font-size: 1.1rem;
}

.form-group input,
.form-group textarea {
  padding: 15px 20px;
  border-radius: 10px;
  border: 2px solid rgba(255, 255, 255, 0.2);
  background: rgba(255, 255, 255, 0.1);
  color: white;
  font-size: 1rem;
  transition: all 0.3s ease;
  backdrop-filter: blur(10px);
}

.form-group input::placeholder,
.form-group textarea::placeholder {
  color: rgba(255, 255, 255, 0.6);
}

.form-group input:focus,
.form-group textarea:focus {
  outline: none;
  border-color: #3498db;
  background: rgba(255, 255, 255, 0.15);
  box-shadow: 0 0 0 3px rgba(52, 152, 219, 0.2);
  transform: translateY(-2px);
}

.form-group textarea {
  resize: vertical;
  min-height: 150px;
  font-family: inherit;
}

.submit-btn {
  background: linear-gradient(135deg, #3498db, #2980b9);
  color: white;
  padding: 18px 30px;
  border: none;
  border-radius: 50px;
  font-size: 1.1rem;
  font-weight: 600;
  cursor: pointer;
  transition: all 0.3s ease;
  display: inline-flex;
  align-items: center;
  gap: 10px;
  align-self: flex-start;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
}

.submit-btn:hover {
  transform: translateY(-3px);
  box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
  background: linear-gradient(135deg, #2980b9, #3498db);
}

.btn-arrow {
  transition: transform 0.3s ease;
}

.submit-btn:hover .btn-arrow {
  transform: translateX(5px);
}

/* Contact Details */
.contact-details {
  display: flex;
  flex-direction: column;
  gap: 30px;
}

/* Contact Info */
.contact-info {
  background: rgba(255, 255, 255, 0.1);
  padding: 35px;
  border-radius: 15px;
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.2);
  animation: fadeInUp 1s ease-out 0.2s both;
}

.contact-info h2 {
  color: #3498db;
  margin-bottom: 25px;
  font-size: 1.8rem;
}

.contact-info .contact-item {
  display: flex;
  align-items: flex-start;
  gap: 15px;
  margin-bottom: 25px;
  padding: 0;
  background: transparent;
  border: none;
  box-shadow: none;
  transition: none;
}

.contact-info .contact-item:last-child {
  margin-bottom: 0;
}

.contact-icon {
  font-size: 2.5rem;
  color: #3498db;
  margin-top: 5px;
  flex-shrink: 0;
}

.contact-text {
  text-align: left;
}

.contact-text h3 {
  color: white;
  margin-bottom: 8px;
  font-size: 1.3rem;
}

.contact-text p {
  margin: 5px 0;
  color: rgba(255, 255, 255, 0.9);
  line-height: 1.6;
}

/* Social Media */
.contact-social {
  background: rgba(255, 255, 255, 0.1);
  padding: 35px;
  border-radius: 15px;
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.2);
  animation: fadeInUp 1s ease-out 0.4s both;
}

.contact-social h2 {
  color: #3498db;
  margin-bottom: 25px;
  font-size: 1.8rem;
}

.social-links {
  display: flex;
  gap: 15px;
  justify-content: center;
}

.contact-social .social-link {
  width: 50px;
  height: 50px;
  font-size: 1.3rem;
  background: rgba(52, 152, 219, 0.3);
  border: 2px solid rgba(52, 152, 219, 0.5);
}

/* Map */
.map-container {
  background: rgba(255, 255, 255, 0.1);
  padding: 35px;
  border-radius: 15px;
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.2);
  animation: fadeInUp 1s ease-out 0.6s both;
}

.map-container h2 {
  color: #3498db;
  margin-bottom: 25px;
  font-size: 1.8rem;
  text-align: center;
}

.map-placeholder {
  height: 250px;
  background: rgba(255, 255, 255, 0.05);
  border-radius: 10px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  gap: 15px;
  border: 2px dashed rgba(255, 255, 255, 0.3);
  transition: all 0.3s ease;
}

.map-placeholder:hover {
  background: rgba(255, 255, 255, 0.1);
  border-color: rgba(52, 152, 219, 0.5);
}

.map-icon {
  font-size: 4rem;
  color: #3498db;
}

.map-placeholder p {
  color: rgba(255, 255, 255, 0.9);
  margin: 0;
  font-size: 1.1rem;
}

.map-note {
  font-size: 0.9rem;
  color: rgba(255, 255, 255, 0.7);
  font-style: italic;
}

/* Responsive Design */
@media (max-width: 1024px) {
  .contact-container {
    grid-template-columns: 1fr;
  }
  
  .contact-details {
    order: -1;
  }
  
  .form-row {
    grid-template-columns: 1fr;
  }
}

@media (max-width: 768px) {
  .contact-form-container,
  .contact-info,
  .contact-social,
  .map-container {
    padding: 25px;
  }
  
  .form-row {
    grid-template-columns: 1fr;
  }
  
  .submit-btn {
    align-self: stretch;
  }
}

.privacy-section {
  background: rgba(255, 255, 255, 0.05);
  padding: 30px;
  border-radius: 12px;
  margin: 25px 0;
  border-left: 4px solid #3498db;
  animation: fadeInUp 1s ease-out;
}

.privacy-section h3 {
  color: #3498db;
  margin-top: 0;
  margin-bottom: 20px;
  font-size: 1.6rem;
}

.privacy-section h4 {
  color: rgba(255, 255, 255, 0.9);
  margin-top: 20px;
  margin-bottom: 15px;
  font-size: 1.3rem;
}

.privacy-section ul {
  margin-left: 25px;
  margin-bottom: 20px;
}

.privacy-section li {
  margin-bottom: 12px;
  line-height: 1.7;
  color: rgba(255, 255, 255, 0.9);
}

.privacy-section p {
  margin-bottom: 20px;
  line-height: 1.7;
  color: rgba(255, 255, 255, 0.9);
}

.privacy-section strong {
  color: #3498db;
  font-weight: 600;
}

/* Privacy intro */
.privacy-intro {
  background: rgba(52, 152, 219, 0.1);
  padding: 30px;
  border-radius: 12px;
  margin-bottom: 30px;
  border: 1px solid rgba(52, 152, 219, 0.3);
  animation: fadeInUp 1s ease-out;
}

.privacy-intro p {
  margin: 0;
  font-size: 1.1rem;
  line-height: 1.8;
  color: rgba(255, 255, 255, 0.95);
}

/* Privacy links */
.privacy-link {
  color: #3498db;
  text-decoration: none;
  transition: all 0.3s ease;
  position: relative;
}

.privacy-link::after {
  content: '';
  position: absolute;
  bottom: -2px;
  left: 0;
  width: 0;
  height: 2px;
  background: #3498db;
  transition: width 0.3s ease;
}

.privacy-link:hover {
  color: #2980b9;
}

.privacy-link:hover::after {
  width: 100%;
}

/* Address styling */
.privacy-section address {
  font-style: normal;
  line-height: 1.8;
  color: rgba(255, 255, 255, 0.9);
  margin: 20px 0;
  padding: 20px;
  background: rgba(255, 255, 255, 0.05);
  border-radius: 8px;
  border: 1px solid rgba(255, 255, 255, 0.1);
}

/* Privacy page background */
.privacy-section-page {
  background: linear-gradient(135deg, rgba(44, 62, 80, 0.95), rgba(52, 73, 94, 0.95)), url('/hero.png') center/cover no-repeat;
  background-attachment: fixed;
}

.privacy-content {
  text-align: left;
  max-width: 900px;
  margin: 30px auto 0;
  background: rgba(255, 255, 255, 0.1);
  padding: 40px;
  border-radius: 15px;
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.2);
  animation: fadeInUp 1s ease-out;
}

.privacy-content h3 {
  margin-top: 25px;
  margin-bottom: 10px;
  color: #3498db;
}

/* 响应式设计 */
@media (max-width: 1200px) {
  /* 导航栏调整 */
  .nav-container {
    max-width: 90%;
  }
  
  /* 服务页面网格调整 */
  .services-grid {
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  }
  
  /* 案例页面网格调整 */
  .cases-container {
    grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
  }
  
  /* 联系页面布局调整 */
  .contact-container {
    grid-template-columns: 1fr;
  }
}

@media (max-width: 1024px) {
  /* 英雄标题调整 */
  .hero-title {
    font-size: 3.5rem;
  }
  
  .hero-subtitle {
    font-size: 1.6rem;
  }
  
  /* 统计数据调整 */
  .home-stats {
    grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
  }
  
  .stat-number {
    font-size: 2.5rem;
  }
  
  /* 技术页面网格调整 */
  .tech-grid {
    grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
  }
  
  /* 团队页面网格调整 */
  .team-grid {
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
  }
}

@media (max-width: 768px) {
  /* 导航栏调整 */
  .nav-container {
    flex-direction: column;
    gap: 15px;
    padding: 0 15px;
  }
  
  .nav-menu {
    gap: 15px;
    flex-wrap: wrap;
    justify-content: center;
  }
  
  .nav-menu li a {
    font-size: 1rem;
    padding: 8px 0;
  }
  
  /* 内容区域调整 */
  .content {
    padding: 20px;
  }
  
  .content h1 {
    font-size: 2.2rem;
  }
  
  /* 英雄区域调整 */
  .hero-title {
    font-size: 2.8rem;
  }
  
  .hero-subtitle {
    font-size: 1.4rem;
  }
  
  /* CTA按钮调整 */
  .cta-buttons {
    flex-direction: column;
    align-items: center;
    gap: 15px;
  }
  
  .cta-button {
    width: 100%;
    max-width: 300px;
    justify-content: center;
  }
  
  /* 统计数据调整 */
  .home-stats {
    grid-template-columns: repeat(2, 1fr);
    gap: 20px;
  }
  
  .stat-item {
    padding: 15px;
  }
  
  /* 服务页面调整 */
  .services-grid {
    grid-template-columns: 1fr;
    gap: 25px;
  }
  
  .service-item {
    padding: 25px;
  }
  
  .service-icon {
    font-size: 3rem;
  }
  
  /* 服务流程调整 */
  .process-steps {
    grid-template-columns: 1fr;
    gap: 25px;
  }
  
  .process-steps::before {
    display: none;
  }
  
  /* 案例页面调整 */
  .cases-container {
    grid-template-columns: 1fr;
    gap: 25px;
  }
  
  /* 技术页面调整 */
  .tech-grid {
    grid-template-columns: repeat(2, 1fr);
    gap: 20px;
  }
  
  .tech-item {
    padding: 25px;
  }
  
  /* 团队页面调整 */
  .team-grid {
    grid-template-columns: 1fr;
    gap: 25px;
  }
  
  /* 联系表单调整 */
  .contact-form-container {
    padding: 25px;
  }
  
  .form-row {
    grid-template-columns: 1fr;
    gap: 15px;
  }
  
  .submit-btn {
    width: 100%;
    justify-content: center;
  }
  
  /* 联系详情调整 */
  .contact-info, .contact-social, .map-container {
    padding: 25px;
  }
  
  /* 隐私页面调整 */
  .privacy-content {
    padding: 25px;
  }
  
  .privacy-section {
    padding: 20px;
  }
  
  /* 标题调整 */
  .category-title {
    font-size: 1.8rem;
    flex-direction: column;
    gap: 10px;
  }
  
  /* 社交链接调整 */
  .member-social {
    bottom: -45px;
    padding: 8px 12px;
  }
  
  .social-link {
    width: 32px;
    height: 32px;
  }
}

@media (max-width: 480px) {
  /* 英雄区域调整 */
  .hero-title {
    font-size: 2.2rem;
  }
  
  .hero-subtitle {
    font-size: 1.2rem;
  }
  
  /* 统计数据调整 */
  .home-stats {
    grid-template-columns: 1fr;
  }
  
  /* 技术页面调整 */
  .tech-grid {
    grid-template-columns: 1fr;
  }
  
  /* 表单元素调整 */
  .form-group input,
  .form-group textarea {
    padding: 12px 16px;
    font-size: 0.95rem;
  }
  
  /* 按钮调整 */
  .submit-btn {
    padding: 15px 25px;
    font-size: 1rem;
  }
  
  /* 地址样式调整 */
  .privacy-section address {
    padding: 15px;
  }
}

@media (max-width: 360px) {
  /* 导航菜单调整 */
  .nav-menu {
    gap: 10px;
  }
  
  .nav-menu li a {
    font-size: 0.9rem;
  }
  
  /* 内容区域调整 */
  .content {
    padding: 15px;
  }
  
  /* 服务项目调整 */
  .service-item {
    padding: 20px;
  }
  
  /* 案例卡片调整 */
  .case-card {
    padding: 25px 20px;
  }
  
  /* 技术项目调整 */
  .tech-item {
    padding: 20px;
  }
  
  /* 团队成员调整 */
  .team-member {
    padding: 20px;
  }
  
  .member-portrait {
    width: 120px;
    height: 120px;
  }
}

/* Cases Section */
.cases-section {
  background: linear-gradient(135deg, rgba(52, 152, 219, 0.9), rgba(41, 128, 185, 0.9)), url('/hero.png') center/cover no-repeat;
  background-attachment: fixed;
  overflow: hidden;
}

.cases-section .content {
  max-width: 1200px;
  margin: 0 auto;
  text-align: center;
  width: 100%;
}

/* 案例卡片横向滚动容器 */
.cases-container {
  position: relative;
  margin: 40px 0;
  width: 100%;
  overflow: hidden;
}

/* 横向滚动内容 */
.cases-container-inner {
  display: flex;
  gap: 30px;
  overflow-x: auto;
  overflow-y: hidden;
  scroll-behavior: smooth;
  padding: 20px 0;
  -webkit-overflow-scrolling: touch;
  scrollbar-width: thin;
  scrollbar-color: rgba(52, 152, 219, 0.5) rgba(255, 255, 255, 0.1);
}

.cases-container-inner::-webkit-scrollbar {
  height: 8px;
}

.cases-container-inner::-webkit-scrollbar-track {
  background: rgba(255, 255, 255, 0.1);
  border-radius: 10px;
}

.cases-container-inner::-webkit-scrollbar-thumb {
  background: linear-gradient(90deg, #3498db, #2980b9);
  border-radius: 10px;
}

/* 案例卡片 */
.case-card {
  background: rgba(255, 255, 255, 0.1);
  padding: 35px;
  border-radius: 15px;
  transition: all 0.3s ease;
  display: flex;
  flex-direction: column;
  backdrop-filter: blur(10px);
  border: 1px solid rgba(255, 255, 255, 0.2);
  animation: fadeInUp 1s ease-out;
  position: relative;
  overflow: hidden;
  min-width: 320px;
  max-width: 380px;
  flex-shrink: 0;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.case-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
  background: rgba(255, 255, 255, 0.15);
}

.case-card::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 5px;
  background: linear-gradient(90deg, #3498db, #2980b9);
  transform: scaleX(0);
  transition: transform 0.3s ease;
}

.case-card:hover {
  transform: translateY(-8px);
  background: rgba(255, 255, 255, 0.15);
  box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
}

.case-card:hover::before {
  transform: scaleX(1);
}

.case-icon {
  font-size: 4rem;
  margin-bottom: 20px;
  text-align: center;
  color: #3498db;
  transition: transform 0.3s ease;
}

.case-card:hover .case-icon {
  transform: scale(1.1) rotate(5deg);
}

.case-card h3 {
  color: white;
  margin-top: 0;
  margin-bottom: 15px;
  text-align: center;
  font-size: 1.8rem;
}

.case-category {
  text-align: center;
  font-weight: 600;
  color: rgba(255, 255, 255, 0.8);
  margin-bottom: 25px;
  font-size: 1.1rem;
  text-transform: uppercase;
  letter-spacing: 1px;
  background: rgba(52, 152, 219, 0.2);
  padding: 8px 16px;
  border-radius: 20px;
  display: inline-block;
  align-self: center;
}

.case-description {
  margin-bottom: 30px;
  line-height: 1.7;
  flex-grow: 1;
  font-size: 1.1rem;
  color: rgba(255, 255, 255, 0.9);
}

/* Case Results */
.case-results {
  margin: 25px 0;
  padding: 20px;
  background: rgba(255, 255, 255, 0.05);
  border-radius: 10px;
  border-left: 4px solid #3498db;
}

.case-results h4 {
  color: #3498db;
  margin-bottom: 15px;
  font-size: 1.3rem;
  margin-top: 0;
}

.case-results ul {
  margin: 0;
  padding-left: 20px;
}

.case-results li {
  margin-bottom: 10px;
  line-height: 1.6;
  color: rgba(255, 255, 255, 0.9);
  position: relative;
  padding-left: 10px;
}

.case-results li::before {
  content: '✓';
  position: absolute;
  left: -20px;
  color: #3498db;
  font-weight: bold;
}

/* Case Technologies */
.case-tech {
  margin-top: auto;
  padding: 20px;
  background: rgba(255, 255, 255, 0.05);
  border-radius: 10px;
}

.case-tech h4 {
  color: #3498db;
  margin-bottom: 15px;
  font-size: 1.3rem;
  margin-top: 0;
}

.tech-tags {
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
  justify-content: center;
}

.tech-tags span {
  background: rgba(52, 152, 219, 0.3);
  padding: 8px 16px;
  border-radius: 20px;
  font-weight: 500;
  font-size: 0.9rem;
  border: 1px solid rgba(52, 152, 219, 0.5);
  color: white;
  transition: all 0.3s ease;
}

.tech-tags span:hover {
  background: rgba(52, 152, 219, 0.5);
  transform: translateY(-2px);
}

/* 响应式设计 */
@media (max-width: 1024px) {
  .cases-container {
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  }
}

@media (max-width: 768px) {
  .cases-container {
    grid-template-columns: 1fr;
  }
  
  .case-card {
    min-width: auto;
  }
}

/* Hero visual elements */
.hero-visual {
  width: 420px;
}

.visual-card {
  background: linear-gradient(180deg, #07101b, #081324);
  padding: 12px;
  border-radius: 12px;
}

/* 响应式设计 */
@media (max-width: 1200px) {
  .services-grid {
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
  }
}

@media (max-width: 1024px) {
  .cases-container {
    flex-wrap: wrap;
    justify-content: center;
  }
  
  .case-card {
    min-width: 250px;
    max-width: 350px;
  }
}

@media (max-width: 768px) {
  .cases-container {
    flex-direction: column;
    align-items: center;
  }
  
  .case-card {
    width: 100%;
    max-width: 400px;
  }
  
  .services-grid {
    grid-template-columns: 1fr;
  }
  
  .process-steps {
    grid-template-columns: 1fr;
    gap: 20px;
  }
  
  .process-steps::before {
    display: none;
  }
}
</style>