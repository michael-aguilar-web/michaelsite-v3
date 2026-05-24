<apply template="base">
  <bind tag="body-main">
    <div class="min-h-screen flex flex-col items-center">

      <main class="flex-1 mb-16 w-full">
        <div class="gallery-grid">

          <div class="project-card" onclick="openModal(this)" data-title="Soldering Fan Filter"
            data-images='["images/gallery/fanfilter_1.webp","images/gallery/fanfilter_2.webp","images/gallery/fanfilter_3.webp","images/gallery/fanfilter_4.webp"]'
            data-description="Screw-on addition to desktop soldering fan."
            data-links='[{"label":"CAD (Onshape)", "url":"https://cad.onshape.com/documents/e15714a6a863859f588cdd43/w/3924d16244ae12dfe882831f/e/2b97dc971b7a94065de29319?renderMode=0&uiState=6a0a4473497c53d4f6a576ff"}]'>
            <img src="images/gallery/fanfilter_1.webp" alt="Fan Filter" loading="lazy">
            <div class="project-info-body">
              <p>Small screw-on addition to my desktop soldering fan to filter out some of the smoke.</p>
            </div>
          </div>

          <div class="project-card" onclick="openModal(this)" data-title="Poop Chute"
            data-images='["images/gallery/poopchute_1.webp","images/gallery/poopchute_2.webp","images/gallery/poopchute_3.webp","images/gallery/poopchute_4.webp","images/gallery/poopchute_5.webp"]'
            data-description="Purged filament slide for my Bambu X1C." data-links='[]'>
            <img src="images/gallery/poopchute_1.webp" alt="Poop Chute" loading="lazy">
            <div class="project-info-body">
              <p>Custom designed purged filament slide for my Bambu X1C, designed to fit my room layout.</p>
            </div>
          </div>

          <div class="project-card" onclick="openModal(this)" data-title="Clamp Case"
            data-images='["images/gallery/clampcase_1.webp","images/gallery/clampcase_2.webp","images/gallery/clampcase_3.webp"]'
            data-description="Case for attaching a portable SSD to my phone." data-links='[]'>
            <img src="images/gallery/clampcase_1.webp" alt="Clamp Case" loading="lazy">
            <div class="project-info-body">
              <p>Over-center clamp-on case to attach my portable SSD to my phone. I wanted to design something that
                didn't use magnets.</p>
            </div>
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