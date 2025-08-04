<apply template="base">
  <bind tag="body-main">
    <div class="min-h-screen flex flex-col items-center">

      <bind tag="galleryClass">grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4 p-4 w-full</bind>
      <bind tag="imageContainer">group relative w-full overflow-hidden rounded-lg cursor-pointer</bind>
      <bind tag="imageClass">w-full h-auto object-cover rounded-lg shadow-md transition-opacity duration-300 opacity-100
        group-hover:opacity-20</bind>
      <bind tag="textOverlay">absolute inset-0 flex items-center justify-center bg-white/80 text-gray-800 text-center
        p-4 opacity-0 transition-opacity duration-300 group-hover:opacity-100 rounded-lg</bind>
      <bind tag="indicatorIcon">absolute bottom-2 left-1/2 transform -translate-x-1/2 opacity-0 group-hover:opacity-100
        transition-opacity duration-300</bind>

      <!-- Main Content -->
      <main class="flex-1 mb-16">
        <div class="${galleryClass}">

          <div class="${imageContainer}"
            onclick="cycleImage(this, ['images/gallery/fanfilter_1.webp', 'images/gallery/fanfilter_2.webp', 'images/gallery/fanfilter_3.webp', 'images/gallery/fanfilter_4.webp'])">
            <img src="images/gallery/fanfilter_1.webp" alt="Fan Filter" class="${imageClass}" loading="lazy">
            <div class="${textOverlay}">
              <p>Small screw-on addition to my desktop soldering fan to filter out some of the smoke</p>
            </div>
            <img src="images/forward-60.png" alt="More" class="${indicatorIcon} w-6 h-6">
          </div>

          <div class="${imageContainer}"
            onclick="cycleImage(this, ['images/gallery/poopchute_1.webp', 'images/gallery/poopchute_2.webp', 'images/gallery/poopchute_3.webp', 'images/gallery/poopchute_4.webp', 'images/gallery/poopchute_5.webp'])">
            <img src="images/gallery/poopchute_1.webp" alt="Poop Chute" class="${imageClass}" loading="lazy">
            <div class="${textOverlay}">
              <p>Purged filament slide for my Bambu X1C, custom designed for my room layout</p>
            </div>
            <img src="images/forward-60.png" alt="More" class="${indicatorIcon} w-6 h-6">
          </div>

          <div class="${imageContainer}"
            onclick="cycleImage(this, ['images/gallery/clampcase_1.webp', 'images/gallery/clampcase_2.webp', 'images/gallery/clampcase_3.webp'])">
            <img src="images/gallery/clampcase_1.webp" alt="Clamp Case" class="${imageClass}" loading="lazy">
            <div class="${textOverlay}">
              <p>Over-center clamp on case to attach my portable SSD to my phone, I wanted to design something that
                didn't use magnets</p>
            </div>
            <img src="images/forward-60.png" alt="More" class="${indicatorIcon} w-6 h-6">
          </div>

        </div>
      </main>

      <!-- Footer -->
      <footer
        class="w-full bg-white shadow-md fixed bottom-0 left-0 z-10 flex justify-center items-center h-12 space-x-4">
        <a href="gallery"
          class="rounded-lg hover:shadow-md p-1 bg-gray-200 hover:bg-gray-300 flex items-center justify-center w-10 h-10">
          <img src="images/back-60.png" class="w-6 h-6" alt="Back">
        </a>
        <a href="index"
          class="rounded-lg hover:shadow-md p-1 bg-gray-200 hover:bg-gray-300 flex items-center justify-center w-10 h-10">
          <img src="images/home-60.png" class="w-6 h-6">
        </a>
      </footer>

      <script>
        function cycleImage(container, images) {
          const img = container.querySelector('img');
          let currentIndex = images.findIndex(src => img.src.includes(src.split('/').pop()));
          if (currentIndex === -1) currentIndex = 0;
          const nextIndex = (currentIndex + 1) % images.length;
          img.src = images[nextIndex];
        }
      </script>

    </div>
  </bind>
</apply>