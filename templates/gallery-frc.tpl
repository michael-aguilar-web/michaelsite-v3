<apply template="base">
  <bind tag="body-main">
    <div class="min-h-screen flex flex-col items-center">

      <main class="flex-1 mb-16 w-full">
        <div class="gallery-grid">

          <div class="project-card"
            onclick="openModal(this)"
            data-title="1833 — REEFSCAPE (2025)"
            data-images='["images/gallery/BEAN25.webp","images/gallery/BEAN25_2.webp"]'
            data-description="Add a description of BEAN 25 and your contributions to the robot for the 2025 REEFSCAPE season."
            data-technical="Add technical details: drivetrain type, key mechanisms, programming stack, and any notable engineering decisions."
            data-links='[]'>
            <img src="images/gallery/BEAN25.webp" alt="1833 2025" loading="lazy">
            <div class="card-hover-overlay">
              <span class="card-hover-title">1833 (2025)</span>
              <span class="card-hover-cta">View Project →</span>
            </div>
          </div>

          <div class="project-card"
            onclick="openModal(this)"
            data-title="1746 — CRESCENDO (2024 v2)"
            data-images='["images/gallery/OTTO24B.webp"]'
            data-description="Add a description of this robot and your contributions to the 2024 CRESCENDO season rebuild."
            data-technical="Add technical details: drivetrain type, key mechanisms, programming stack, and any notable engineering decisions."
            data-links='[]'>
            <img src="images/gallery/OTTO24B.webp" alt="1746 2024 v2" loading="lazy">
            <div class="card-hover-overlay">
              <span class="card-hover-title">1746 (2024 v2)</span>
              <span class="card-hover-cta">View Project →</span>
            </div>
          </div>

          <div class="project-card"
            onclick="openModal(this)"
            data-title="1746 — CRESCENDO (2024)"
            data-images='["images/gallery/OTTO24A.webp"]'
            data-description="Add a description of this robot and your contributions to the 2024 CRESCENDO season."
            data-technical="Add technical details: drivetrain type, key mechanisms, programming stack, and any notable engineering decisions."
            data-links='[]'>
            <img src="images/gallery/OTTO24A.webp" alt="1746 2024" loading="lazy">
            <div class="card-hover-overlay">
              <span class="card-hover-title">1746 (2024)</span>
              <span class="card-hover-cta">View Project →</span>
            </div>
          </div>

          <div class="project-card"
            onclick="openModal(this)"
            data-title="1746 — CHARGED UP (2023 v2)"
            data-images='["images/gallery/OTTO23B.webp"]'
            data-description="Add a description of this robot and your contributions to the 2023 CHARGED UP season rebuild."
            data-technical="Add technical details: drivetrain type, key mechanisms, programming stack, and any notable engineering decisions."
            data-links='[]'>
            <img src="images/gallery/OTTO23B.webp" alt="1746 2023 v2" loading="lazy">
            <div class="card-hover-overlay">
              <span class="card-hover-title">1746 (2023 v2)</span>
              <span class="card-hover-cta">View Project →</span>
            </div>
          </div>

          <div class="project-card"
            onclick="openModal(this)"
            data-title="1746 — CHARGED UP (2023)"
            data-images='["images/gallery/OTTO23A.webp"]'
            data-description="Add a description of this robot and your contributions to the 2023 CHARGED UP season."
            data-technical="Add technical details: drivetrain type, key mechanisms, programming stack, and any notable engineering decisions."
            data-links='[]'>
            <img src="images/gallery/OTTO23A.webp" alt="1746 2023" loading="lazy">
            <div class="card-hover-overlay">
              <span class="card-hover-title">1746 (2023)</span>
              <span class="card-hover-cta">View Project →</span>
            </div>
          </div>

          <div class="project-card"
            onclick="openModal(this)"
            data-title="1746 — STEAMWORKS (2017)"
            data-images='["images/gallery/OTTO17.webp"]'
            data-description="Add a description of this robot and your contributions to the 2017 STEAMWORKS season."
            data-technical="Add technical details: drivetrain type, key mechanisms, programming stack, and any notable engineering decisions."
            data-links='[]'>
            <img src="images/gallery/OTTO17.webp" alt="1746 2017" loading="lazy">
            <div class="card-hover-overlay">
              <span class="card-hover-title">1746 (2017)</span>
              <span class="card-hover-cta">View Project →</span>
            </div>
          </div>

          <div class="project-card"
            onclick="openModal(this)"
            data-title="1746 — STRONGHOLD (2016 v2)"
            data-images='["images/gallery/OTTO16B.webp"]'
            data-description="Add a description of this robot and your contributions to the 2016 STRONGHOLD season rebuild."
            data-technical="Add technical details: drivetrain type, key mechanisms, programming stack, and any notable engineering decisions."
            data-links='[]'>
            <img src="images/gallery/OTTO16B.webp" alt="1746 2016 v2" loading="lazy">
            <div class="card-hover-overlay">
              <span class="card-hover-title">1746 (2016 v2)</span>
              <span class="card-hover-cta">View Project →</span>
            </div>
          </div>

          <div class="project-card"
            onclick="openModal(this)"
            data-title="1746 — STRONGHOLD (2016)"
            data-images='["images/gallery/OTTO16A.webp"]'
            data-description="Add a description of this robot and your contributions to the 2016 STRONGHOLD season."
            data-technical="Add technical details: drivetrain type, key mechanisms, programming stack, and any notable engineering decisions."
            data-links='[]'>
            <img src="images/gallery/OTTO16A.webp" alt="1746 2016" loading="lazy">
            <div class="card-hover-overlay">
              <span class="card-hover-title">1746 (2016)</span>
              <span class="card-hover-cta">View Project →</span>
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
            <button class="modal-arrow" id="modal-prev" onclick="stepSlide(-1)">&#8249;</button>
            <button class="modal-arrow" id="modal-next" onclick="stepSlide(1)">&#8250;</button>
            <div id="modal-dots"></div>
          </div>
          <div id="modal-right">
            <h2 id="modal-title"></h2>
            <div id="modal-tabs">
              <button class="tab-btn active" onclick="switchTab(this,'description')">Description</button>
              <button class="tab-btn" onclick="switchTab(this,'technical')">Technical</button>
              <button class="tab-btn" onclick="switchTab(this,'links')">Links</button>
            </div>
            <div id="modal-tab-content"></div>
          </div>
        </div>
      </div>

      <!-- Footer -->
      <footer class="w-full bg-white shadow-md fixed bottom-0 left-0 z-10 flex justify-center items-center h-12 space-x-4">
        <a href="gallery"
          class="rounded-lg hover:shadow-md p-1 bg-gray-200 hover:bg-gray-300 flex items-center justify-center w-10 h-10">
          <img src="images/back-60.png" class="w-6 h-6" alt="Back">
        </a>
        <a href="index"
          class="rounded-lg hover:shadow-md p-1 bg-gray-200 hover:bg-gray-300 flex items-center justify-center w-10 h-10">
          <img src="images/home-60.png" class="w-6 h-6" alt="Home">
        </a>
      </footer>

      <script>
        let _images = [], _slide = 0, _tabs = {};

        function openModal(card) {
          _images = JSON.parse(card.dataset.images);
          _tabs = {
            description: card.dataset.description || '',
            technical: card.dataset.technical || '',
            links: JSON.parse(card.dataset.links || '[]')
          };

          document.getElementById('modal-title').textContent = card.dataset.title;

          const dotsEl = document.getElementById('modal-dots');
          dotsEl.innerHTML = '';
          if (_images.length > 1) {
            _images.forEach((_, i) => {
              const d = document.createElement('button');
              d.className = 'modal-dot' + (i === 0 ? ' active' : '');
              d.onclick = e => { e.stopPropagation(); goToSlide(i); };
              dotsEl.appendChild(d);
            });
          }

          const multi = _images.length > 1;
          document.getElementById('modal-prev').style.display = multi ? 'flex' : 'none';
          document.getElementById('modal-next').style.display = multi ? 'flex' : 'none';

          const tabs = document.querySelectorAll('.tab-btn');
          tabs.forEach(t => t.classList.remove('active'));
          tabs[0].classList.add('active');

          goToSlide(0);
          renderTab('description');
          document.getElementById('modal-overlay').classList.add('open');
          document.body.style.overflow = 'hidden';
        }

        function closeModal() {
          document.getElementById('modal-overlay').classList.remove('open');
          document.body.style.overflow = '';
        }

        function handleOverlayClick(e) {
          if (e.target === document.getElementById('modal-overlay')) closeModal();
        }

        function goToSlide(i) {
          _slide = i;
          const img = document.getElementById('modal-img');
          const preload = new Image();
          preload.onload = () => { img.src = preload.src; img.style.opacity = '1'; };
          preload.onerror = () => { img.src = _images[i]; img.style.opacity = '1'; };
          img.style.opacity = '0';
          preload.src = _images[i];
          document.querySelectorAll('.modal-dot').forEach((d, j) => d.classList.toggle('active', j === i));
        }

        function stepSlide(dir) {
          goToSlide((_slide + dir + _images.length) % _images.length);
        }

        function switchTab(btn, name) {
          document.querySelectorAll('.tab-btn').forEach(t => t.classList.remove('active'));
          btn.classList.add('active');
          renderTab(name);
        }

        function renderTab(name) {
          const el = document.getElementById('modal-tab-content');
          if (name === 'links') {
            if (_tabs.links.length === 0) {
              el.innerHTML = '<p style="color:#9ca3af;font-size:0.85rem;">No links added yet.</p>';
            } else {
              el.innerHTML = '<div class="tab-links">' +
                _tabs.links.map(l => `<a class="tab-link-item" href="${l.url}" target="_blank" rel="noopener">${l.label}</a>`).join('') +
                '</div>';
            }
          } else {
            el.textContent = _tabs[name] || '';
          }
        }

        document.addEventListener('keydown', e => {
          const open = document.getElementById('modal-overlay').classList.contains('open');
          if (!open) return;
          if (e.key === 'Escape') closeModal();
          if (e.key === 'ArrowLeft') stepSlide(-1);
          if (e.key === 'ArrowRight') stepSlide(1);
        });
      </script>

    </div>
  </bind>
</apply>
