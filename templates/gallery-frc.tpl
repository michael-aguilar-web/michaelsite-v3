<apply template="base">
  <bind tag="body-main">
    <div class="min-h-screen flex flex-col items-center">

      <main class="flex-1 mb-16 w-full">
        <div class="gallery-grid">

          <div class="project-card" onclick="openModal(this)" data-title="Clover // 1833 2026"
            data-images='["images/gallery/BEAN26.webp", "images/gallery/BEAN26_2.webp", "images/gallery/BEAN26_3.webp"]'
            data-description="Team 1833's robot Clover, built for 
            the 2026 REBUILT season."
            data-links='[{"label": "Match Video (YouTube)", "url":"https://www.youtube.com/watch?v=mKHfhSehWHg"}, {"label":"Statbotics", "url":"https://www.statbotics.io/team/1833/2026"}]'>
            <img src="images/gallery/BEAN26.webp" alt="1833 2026" loading="lazy">
            <div class="project-info-body">
              <p><strong>Accomplishments:</strong></p>
              <ul>
                <li>- Finished the season ranked 35th worldwide (out of 3724)</li>
                <li>- World Championship Division Finalists (round of 16)</li>
                <li>- State Championship Winners, 2x Qualifier Winners</li>
              </ul>
            </div>
          </div>

          <div class="project-card" onclick="openModal(this)" data-title="Sprout // 1833 2025"
            data-images='["images/gallery/BEAN25.webp","images/gallery/BEAN25_2.webp"]'
            data-description="Team 1833's robot Sprout, built for the 2025 REEFSCAPE season."
            data-links='[{"label":"Public CAD Release (Onshape)","url":"https://cad.onshape.com/documents/7352031dc691f38153ccf1cc/w/e72cda79ddd30179206cdaa4/e/1f98def145668d8737add48f?renderMode=0&uiState=6a0a3d80643f5ee15ada0891"}, {"label":"Match Video (YouTube)", "url":"https://www.youtube.com/watch?v=7Uyh4NzLGgQ"}, {"label":"Statbotics", "url":"https://www.statbotics.io/team/1833/2025"}]'>
            <img src="images/gallery/BEAN25.webp" alt="1833 2025" loading="lazy">
            <div class="project-info-body">
              <p><strong>Accomplishments:</strong></p>
              <ul>
                <li>- Finished the season ranked 131st worldwide (out of 3702)</li>
                <li>- State Championship Winners, Gwinnett Qualifier Winners</li>
              </ul>
            </div>
          </div>

          <div class="project-card" onclick="openModal(this)" data-title="OTTOTUNE // 1746 2024 v2"
            data-images='["images/gallery/OTTO24B.webp"]'
            data-description="Team 1746's second robot, OTTOTUNE, rebuilt during the 2024 CRESCENDO season."
            data-links='[]'>
            <img src="images/gallery/OTTO24B.webp" alt="1746 2024 v2" loading="lazy">
          </div>

          <div class="project-card" onclick="openModal(this)" data-title="OTTOTUNE // 1746 2024 v1"
            data-images='["images/gallery/OTTO24A.webp"]'
            data-description="Team 1746's first robot, OTTOTUNE, built for the 2024 CRESCENDO season." data-links='[]'>
            <img src="images/gallery/OTTO24A.webp" alt="1746 2024 v1" loading="lazy">
          </div>

          <div class="project-card" onclick="openModal(this)" data-title="Low Calorie // 1746 2023 v2"
            data-images='["images/gallery/OTTO23B.webp"]'
            data-description="Team 1746's second robot, Low Calorie, rebuilt during the 2023 CHARGED UP season."
            data-links='[]'>
            <img src="images/gallery/OTTO23B.webp" alt="1746 2023 v2" loading="lazy">
          </div>

          <div class="project-card" onclick="openModal(this)" data-title="Calorie // 1746 2023 v1"
            data-images='["images/gallery/OTTO23A.webp"]'
            data-description="Team 1746's first robot, Calorie, built for the 2023 CHARGED UP season." data-links='[]'>
            <img src="images/gallery/OTTO23A.webp" alt="1746 2023 v1" loading="lazy">
          </div>

          <div class="project-card" onclick="openModal(this)" data-title="OTTO 17 // 1746 2017"
            data-images='["images/gallery/OTTO17.webp"]'
            data-description="Team 1746's robot, OTTO 17, built for the 2017 STEAMWORKS season." data-links='[]'>
            <img src="images/gallery/OTTO17.webp" alt="1746 2017" loading="lazy">
          </div>

          <div class="project-card" onclick="openModal(this)" data-title="Garbanzo Bot // 1746 2016 v2"
            data-images='["images/gallery/OTTO16B.webp"]'
            data-description="Team 1746's robot, Garbanzo Bot, built for the 2016 STRONGHOLD offseason."
            data-links='[]'>
            <img src="images/gallery/OTTO16B.webp" alt="1746 2016 v2" loading="lazy">
          </div>

          <div class="project-card" onclick="openModal(this)" data-title="OTTO 16 // 1746 2016 v1"
            data-images='["images/gallery/OTTO16A.webp"]'
            data-description="Team 1746's robot, OTTO 16, built for the 2016 STRONGHOLD season." data-links='[]'>
            <img src="images/gallery/OTTO16A.webp" alt="1746 2016 v1" loading="lazy">
          </div>

        </div>
      </main>

      <!-- Modal -->
      <div id="modal-overlay" onclick="handleOverlayClick(event)">
        <div id="modal-card">
          <button id="modal-close" onclick="closeModal()">&#x2715;</button>
          <div id="modal-left">
            <img id="modal-img" src="" alt="">
            <button class="modal-arrow" id="modal-prev" onclick="stepSlide(-1)"><img src="images/back-60.png"
                alt="Previous"></button>
            <button class="modal-arrow" id="modal-next" onclick="stepSlide(1)"><img src="images/forward-60.png"
                alt="Next"></button>
            <div id="modal-dots"></div>
          </div>
          <div id="modal-right">
            <h2 id="modal-title"></h2>
            <p id="modal-description"></p>
            <div id="modal-tabs">
              <button class="tab-btn active" onclick="switchTab(this,'info')">Info</button>
              <button class="tab-btn" onclick="switchTab(this,'links')">Links</button>
            </div>
            <div id="modal-tab-content"></div>
          </div>
        </div>
      </div>

      <!-- Footer -->
      <footer
        class="w-full bg-white shadow-md fixed bottom-0 left-0 z-10 flex justify-center items-center h-12 space-x-4">
        <a href="gallery"
          class="rounded-lg hover:shadow-md p-1 bg-gray-200 hover:bg-gray-300 flex items-center justify-center w-10 h-10">
          <img src="images/back-60.png" class="w-6 h-6" alt="Back">
        </a>
        <a href="index"
          class="rounded-lg hover:shadow-md p-1 bg-gray-200 hover:bg-gray-300 flex items-center justify-center w-10 h-10">
          <img src="images/home-60.png" class="w-6 h-6" alt="Home">
        </a>
      </footer>


    </div>
  </bind>
</apply>