<apply template="base">
  <bind tag="body-main">
    <div class="min-h-screen flex flex-col justify-center items-center">

      <bind tag="galleryClass">grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-8 p-4 justify-items-center</bind>

      <!-- Main Content -->
      <main class="flex-1 w-full flex justify-center items-center">
        <div class="${galleryClass}">

          <a href="gallery-frc" class="gallery-tile" data-title="FRC Robots"
            data-slideshow='["images/gallery/BEAN26.webp","images/gallery/BEAN25.webp","images/gallery/OTTO24B.webp","images/gallery/OTTO24A.webp"]'>
            <img src="images/gallery/BEAN25.webp" alt="FRC Robots" loading="lazy">
          </a>

          <a href="gallery-3dp" class="gallery-tile" data-title="Simple 3D Prints"
            data-slideshow='["images/gallery/fanfilter_1.webp","images/gallery/poopchute_1.webp","images/gallery/clampcase_1.webp"]'>
            <img src="images/gallery/fanfilter_1.webp" alt="3D Prints" loading="lazy">
          </a>

          <a href="gallery-apps" class="gallery-tile" data-title="Custom Apps"
            data-slideshow='["images/gallery/overlay_1.webp", "images/gallery/cardgenerator.webp"]'>
            <img src="images/gallery/overlay_1.webp" alt="Custom Apps" loading="lazy">
          </a>
        </div>
      </main>

      <!-- Footer -->
      <footer
        class="w-full bg-white shadow-md fixed bottom-0 left-0 z-10 flex justify-center items-center h-12 space-x-4">
        <a href="index"
          class="rounded-lg hover:shadow-md p-1 bg-gray-200 hover:bg-gray-300 flex items-center justify-center w-10 h-10">
          <img src="images/home-60.png" class="w-6 h-6">
        </a>
      </footer>

    </div>
  </bind>
</apply>