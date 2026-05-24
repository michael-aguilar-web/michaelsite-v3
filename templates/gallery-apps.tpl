<apply template="base">
  <bind tag="body-main">
    <div class="min-h-screen flex flex-col items-center">

      <main class="flex-1 mb-16 w-full">
        <div class="gallery-grid">

          <div class="project-card" onclick="openModal(this)" data-title="FRC Overlay Generator"
            data-images='["images/gallery/overlay_1.webp", "images/gallery/overlay_2.webp", "images/gallery/overlay_3.webp", "images/gallery/overlay_4.webp"]'
            data-description="Tool for analyzing official match recordings to generate a custom video overlay."
            data-links='[{"label":"Example Video (YouTube)", "url":"https://www.youtube.com/watch?v=R0sQG-sU-5k"}]'>
            <img src="images/gallery/overlay_1.webp" alt="FRC Overlay Generator" loading="lazy">
            <div class="project-info-body">
              <p>Rather than manually editing score overlays onto my match recordings, I built a React app that uses
                Tesseract OCR to read scores from official footage and automatically generate overlays via Remotion.</p>

              <p><strong>Features:</strong></p>
              <ul>
                <li>- Built-in youtube video downloader for convenience</li>
                <li>- Saveable configurations for a given event's overlay - once set up, multiple matches from that
                  event can be processed without reconfiguring</li>
                <li>- Robust data filtering and validation to ensure accurate score extraction</li>
                <li>- Customizable video overlay design with animated transitions</li>
              </ul>

              <p><strong>Frontend:</strong></p>
              <ul>
                <li>- React 19 + TypeScript</li>
                <li>- Vite</li>
                <li>- Tailwind CSS v4</li>
                <li>- shadcn/ui (component primitives)</li>
              </ul>

              <p><strong>Backend:</strong></p>
              <ul>
                <li>- FastAPI (Python)</li>
                <li>- uvicorn</li>
                <li>- OpenCV (image processing)</li>
                <li>- Tesseract OCR (text recognition)</li>
                <li>- yt-dlp</li>
              </ul>

              <p><strong>Overlay Generation:</strong></p>
              <ul>
                <li>- Remotion (React based video rendering)</li>
              </ul>
            </div>
          </div>

          <div class="project-card" onclick="openModal(this)" data-title="Shorts Info Card Generator"
            data-images='["images/gallery/cardgenerator.webp"]'
            data-description="Tool for generating FRC team info cards for Short form videos."
            data-links='[{"label":"Example Video (YouTube)", "url":"https://www.youtube.com/shorts/B-qaPx4YGOo"}]'>
            <img src="images/gallery/cardgenerator.webp" alt="Shorts Info Card Generator" loading="lazy">
            <div class="project-info-body">
              <p>My short form videos needed a clean way to display the info of the team in the video, so I set up a
                simple Remotion project that generates an animated overlay.</p>

              <p><strong>Features:</strong></p>
              <ul>
                <li>- Customizable appearance based on team colors</li>
                <li>- Toggles for additional team info and additional banners for social media</li>
                <li>- Animated transitions</li>
              </ul>
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