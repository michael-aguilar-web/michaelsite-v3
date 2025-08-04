<apply template="base">
  <bind tag="body-main">
    <div class="min-h-screen flex flex-col justify-center items-center">

      <bind tag="galleryClass">grid grid-cols-1 sm:grid-cols-2 gap-8 p-4</bind>
      <bind tag="imageContainer">group relative w-64 h-64 overflow-hidden rounded-lg cursor-pointer transform
        transition-transform duration-300 hover:scale-105</bind>
      <bind tag="imageClass">w-full h-full object-cover rounded-lg opacity-50</bind>
      <bind tag="titleOverlay">absolute inset-0 flex items-center justify-center text-white text-2xl font-semibold
      </bind>

      <!-- Main Content -->
      <main class="flex-1 w-full flex justify-center items-center">
        <div class="${galleryClass}">

          <!-- FRC Projects Tile -->
          <div class="${imageContainer}">
            <a href="gallery-frc" class="block w-full h-full">
              <img src="images/gallery/BEAN25.webp" alt="FRC Projects" class="${imageClass}" loading="lazy">
              <div class="${titleOverlay}">FRC Robots</div>
            </a>
          </div>

          <!-- 3D Prints Tile -->
          <div class="${imageContainer}">
            <a href="gallery-3dp" class="block w-full h-full">
              <img src="images/gallery/poopchute_5.webp" alt="3D Prints" class="${imageClass}" loading="lazy">
              <div class="${titleOverlay}">3D Prints</div>
            </a>
          </div>
        </div>
      </main>

      <!-- Footer -->
      <footer class="w-full bg-white shadow-md fixed bottom-0 left-0 z-10 flex justify-center items-center h-12 space-x-4">
        <a href="index"
          class="rounded-lg hover:shadow-md p-1 bg-gray-200 hover:bg-gray-300 flex items-center justify-center w-10 h-10">
          <img src="images/home-60.png" class="w-6 h-6">
        </a>
      </footer>

    </div>
  </bind>
</apply>