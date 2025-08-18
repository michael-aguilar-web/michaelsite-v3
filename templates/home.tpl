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
        <a href="mailto: michael.b.aguilar@gmail.com" class="${cardSmallClass} w-12 p-2" data-label="email"
          aria-label="email">
          <img src="images/email-60.png">
        </a>
        <a href=gallery class="${cardSmallClass} w-12 p-2" data-label="gallery" aria-label="gallery">
          <img src="images/photo-60.png">
        </a>
        <a href="https://www.youtube.com/@michael.aguilar" class="${cardSmallClass} w-12 p-2" data-label="youtube"
          aria-label="youtube">
          <img src="images/youtube-60.png">
        </a>
        <a href="https://www.linkedin.com/in/michaelbaguilar/" class="${cardSmallClass} w-12 p-2" data-label="linkedin"
          aria-label="linkedin">
          <img src="images/linkedin-60.png">
        </a>

      </div>
    </div>

    <!-- Floating mouse-follow label -->
    <style>
      .cursor-label {
        position: fixed;
        z-index: 50;
        transform: translate(12px, 12px);
        pointer-events: none;
        opacity: 0;
        transition: opacity 150ms ease;
        /* Tailwind-like styling fallback */
        background: white;
        border: 1px solid rgba(0, 0, 0, 0.08);
        border-radius: 9999px;
        padding: 0.25rem 0.75rem;
        font-size: 0.875rem;
        box-shadow: 0 1px 2px rgba(0, 0, 0, 0.06), 0 1px 1px rgba(0, 0, 0, 0.04);
        color: #1f2937;
        /* gray-800 */
      }

      .cursor-label.show {
        opacity: 1;
      }
    </style>
    <div id="cursor-label" class="cursor-label" aria-hidden="true"></div>
    <script>
      (function () {
        const label = document.getElementById('cursor-label');
        if (!label) return;
        // Target only the small icon buttons: anchors that wrap an <img> and have a title
        const iconImgs = document.querySelectorAll('a[data-label] > img');
        const buttons = Array.from(iconImgs).map(img => img.parentElement);
        let inside = false;

        function position(e) {
          label.style.left = (e.clientX + 12) + 'px';
          label.style.top = (e.clientY + 12) + 'px';
        }

        buttons.forEach(btn => {
          btn.addEventListener('mouseenter', (e) => {
            const t = btn.getAttribute('aria-label') || '';
            label.textContent = t;
            label.classList.add('show');
            position(e);
            inside = true;
          }, { passive: true });
          btn.addEventListener('mousemove', (e) => {
            if (!inside) return;
            position(e);
          }, { passive: true });
          btn.addEventListener('mouseleave', () => {
            inside = false;
            label.classList.remove('show');
          }, { passive: true });
          btn.addEventListener('click', () => {
            // Hide on click so it doesn't linger during navigation
            label.classList.remove('show');
          }, { passive: true });
        });
      })();
    </script>

  </bind>
</apply>