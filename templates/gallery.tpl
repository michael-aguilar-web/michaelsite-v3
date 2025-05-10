<apply template="base">
  <bind tag="body-main">
    <div class="min-h-screen flex flex-col items-center">

      <!-- Define Classes with Bind Tags -->
      <bind tag="galleryClass">grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4 p-4 w-full</bind>
      <bind tag="imageContainer">group relative w-full overflow-hidden rounded-lg cursor-pointer</bind>
      <bind tag="imageClass">w-full h-auto object-cover rounded-lg shadow-md transition-opacity duration-300 opacity-100
        group-hover:opacity-0</bind>
      <bind tag="textOverlay">absolute inset-0 flex items-center justify-center bg-white/80 text-gray-800 text-center
        p-4 opacity-0 transition-opacity duration-300 group-hover:opacity-100 rounded-lg</bind>

      <!-- Main Content -->
      <main class="flex-1 mb-16">
        <div class="${galleryClass}">
          <div class="${imageContainer}">
            <img src="images/gallery/BEAN25.webp" alt="BEAN 25" class="${imageClass}" loading="lazy">
            <div class="${textOverlay}">
              <p>Team BEAN 1833's first robot, designed for the 2025 FRC game <em>Reefscape</em></p>
            </div>
          </div>
          <div class="${imageContainer}">
            <img src="images/gallery/OTTO24B.webp" alt="OTTO 24B" class="${imageClass}" loading="lazy">
            <div class="${textOverlay}">
              <p>Team OTTO 1746's 2024 robot, post rebuild</p>
            </div>
          </div>
          <div class="${imageContainer}">
            <img src="images/gallery/OTTO24A.webp" alt="OTTO 24A" class="${imageClass}" loading="lazy">
            <div class="${textOverlay}">
              <p>Team OTTO 1746's original 2024 robot, designed for the FRC game <em>Crescendo</em></p>
            </div>
          </div>
          <div class="${imageContainer}">
            <img src="images/gallery/OTTO23B.webp" alt="OTTO 23B" class="${imageClass}" loading="lazy">
            <div class="${textOverlay}">
              <p>Team OTTO 1746's 2023 robot, post rebuild</p>
            </div>
          </div>
          <div class="${imageContainer}">
            <img src="images/gallery/OTTO23A.webp" alt="OTTO 23A" class="${imageClass}" loading="lazy">
            <div class="${textOverlay}">
              <p>Team OTTO 1746's original 2023 robot, designed for the FRC game <em>CHARGED UP</em></p>
            </div>
          </div>
          <div class="${imageContainer}">
            <img src="images/gallery/OTTO17.webp" alt="OTTO 17" class="${imageClass}" loading="lazy">
            <div class="${textOverlay}">
              <p>Team OTTO 1746's 2017 robot, designed for the FRC game <em>Steamworks</em></p>
            </div>
          </div>
          <div class="${imageContainer}">
            <img src="images/gallery/OTTO16B.webp" alt="OTTO 16B" class="${imageClass}" loading="lazy">
            <div class="${textOverlay}">
              <p>Team OTTO 1746's 2016 summer rebuild</p>
            </div>
          </div>
          <div class="${imageContainer}">
            <img src="images/gallery/OTTO16A.webp" alt="OTTO 16A" class="${imageClass}" loading="lazy">
            <div class="${textOverlay}">
              <p>Team OTTO 1746's 2016 robot, designed for the FRC game <em>Stronghold</em></p>
            </div>
          </div>
        </div>
      </main>

      <!-- Footer -->
      <footer class="w-full bg-white shadow-md fixed bottom-0 left-0 z-10 flex justify-center items-center h-12">
        <a href="index"
          class="rounded-lg hover:shadow-md p-1 bg-gray-200 hover:bg-gray-300 flex items-center justify-center w-10 h-10">
          <img src="images/home-60.png" class="w-6 h-6">
        </a>
      </footer>

    </div>
  </bind>
</apply>