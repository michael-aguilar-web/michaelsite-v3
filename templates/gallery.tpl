<apply template="base">
  <bind tag="body-main">
    <div class="min-h-screen flex flex-col items-center">

      <!-- Define Classes with Bind Tags -->
      <bind tag="galleryClass">grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4 p-4 mx-auto
        grid-auto-rows-1</bind>
      <bind tag="imageClass">w-full h-auto rounded-lg shadow-md object-cover</bind>
      <bind tag="imageContainer">break-inside-avoid w-full</bind>

      <!-- Main Content -->
      <main class="flex-1 mb-16">
        <div class="${galleryClass}">
          <div class="${imageContainer}"><img src="images/gallery/BEAN25.png" alt="Description" class="${imageClass}">
          </div>
          <div class="${imageContainer}"><img src="images/gallery/OTTO24B.jpg" alt="Description" class="${imageClass}">
          </div>
          <div class="${imageContainer}"><img src="images/gallery/OTTO24A.jpg" alt="Description" class="${imageClass}">
          </div>
          <div class="${imageContainer}"><img src="images/gallery/OTTO23B.jpg" alt="Description" class="${imageClass}">
          </div>
          <div class="${imageContainer}"><img src="images/gallery/OTTO23A.png" alt="Description" class="${imageClass}">
          </div>
          <div class="${imageContainer}"><img src="images/gallery/OTTO17.jpg" alt="Description" class="${imageClass}">
          </div>
          <div class="${imageContainer}"><img src="images/gallery/OTTO16B.jpg" alt="Description" class="${imageClass}">
          </div>
          <div class="${imageContainer}"><img src="images/gallery/OTTO16A.jpg" alt="Description" class="${imageClass}">
          </div>
          <!-- Add more images as needed -->
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