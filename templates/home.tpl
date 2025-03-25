<apply template="base">
  <bind tag="body-main">
    <div class="container max-w-screen-md mx-auto mt-8 flex flex-col items-center justify-center">
      <bind tag="cardClass">rounded-lg shadow-md m-4 bg-white </bind>
      <bind tag="cardSmallClass">rounded-lg hover:shadow-md m-4 hover:bg-white flex-shrink-0 </bind>
      <bind tag="linkClass">underline</bind>

      <!-- Topmost card -->
      <div style="max-width: 40em;" class="${cardClass} px-4 py-6 flex flex-col items-center justify-center space-y-4">
        <div class="w-32 flex-shrink-0">
          <ema:metadata>
            <with var="template">
              <img src="images/s3_1white_cropped.png" class="rounded-full object-cover">
            </with>
          </ema:metadata>
        </div>
      </div>

      <!-- Footer -->
      <div class="flex flex-row justify-center">
        <a href="mailto: michael.b.aguilar@gmail.com" class="${cardSmallClass} w-12 p-2" title="email">
          <img src="images/email-60.png">
        </a>
        <a href=gallery class="${cardSmallClass} w-12 p-2" title="gallery">
          <img src="images/photo-60.png">
        </a>
        <a href="https://www.youtube.com/@michael.aguilar" class="${cardSmallClass} w-12 p-2" title="youtube">
          <img src="images/youtube-60.png">
        </a>
        <a href="https://www.linkedin.com/in/michaelbaguilar/" class="${cardSmallClass} w-12 p-2" title="linkedin">
          <img src="images/linkedin-60.png">
        </a>

      </div>
    </div>
  </bind>
</apply>