<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins&family=Outfit&display=swap" rel="stylesheet">

<style>
    body {
        font-family: 'Poppins', sans-serif;
        font-variation-settings: 'wght' 350;
    }

    a.mavenLinkBold {
        font-variation-settings: 'wght' 400;
    }

    strong {
        font-variation-settings: 'wght' 500;
    }

    h1,
    h2,
    h3,
    h4,
    h5,
    h6,
    header,
    .header-font {
        font-family: 'Poppins', sans-serif;
    }

    h1 {
        font-family: "Outfit", sans-serif;
        font-variation-settings: 'wght' 300;
    }

    h2 {
        font-variation-settings: 'wght' 400;
    }

    h3 {
        font-variation-settings: 'wght' 300;
    }
</style>

<script src="https://cdn.tailwindcss.com"></script>

<style>
/* ===== Gallery Modal ===== */
#modal-overlay {
  position: fixed;
  inset: 0;
  background: rgba(0, 0, 0, 0.55);
  backdrop-filter: blur(3px);
  -webkit-backdrop-filter: blur(3px);
  display: flex;
  align-items: center;
  justify-content: center;
  z-index: 50;
  opacity: 0;
  pointer-events: none;
  transition: opacity 0.2s ease;
}
#modal-overlay.open {
  opacity: 1;
  pointer-events: all;
}
#modal-card {
  background: #fff;
  border-radius: 14px;
  width: min(90vw, 880px);
  height: 78vh;
  min-height: 380px;
  display: flex;
  position: relative;
  transform: scale(0.96);
  transition: transform 0.2s ease;
  overflow: hidden;
}
#modal-overlay.open #modal-card {
  transform: scale(1);
}
#modal-close {
  position: absolute;
  top: 10px;
  right: 12px;
  z-index: 20;
  background: rgba(255, 255, 255, 0.9);
  border: none;
  border-radius: 50%;
  width: 30px;
  height: 30px;
  font-size: 18px;
  line-height: 1;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #374151;
  transition: background 0.15s;
}
#modal-close:hover { background: #f3f4f6; }

#modal-left {
  position: relative;
  width: 50%;
  background: #1a1a1a;
  display: flex;
  align-items: center;
  justify-content: center;
  overflow: hidden;
  flex-shrink: 0;
}
#modal-img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: opacity 0.18s ease;
}
.modal-arrow {
  position: absolute;
  top: 50%;
  transform: translateY(-50%);
  background: rgba(255, 255, 255, 0.85);
  border: none;
  border-radius: 50%;
  width: 34px;
  height: 34px;
  font-size: 22px;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  z-index: 5;
  transition: background 0.15s;
  color: #111;
  padding-bottom: 1px;
}
.modal-arrow:hover { background: #fff; }
#modal-prev { left: 10px; }
#modal-next { right: 10px; }
#modal-dots {
  position: absolute;
  bottom: 12px;
  left: 50%;
  transform: translateX(-50%);
  display: flex;
  gap: 6px;
  z-index: 5;
}
.modal-dot {
  width: 7px;
  height: 7px;
  border-radius: 50%;
  background: rgba(255, 255, 255, 0.4);
  border: 1.5px solid rgba(255, 255, 255, 0.7);
  cursor: pointer;
  padding: 0;
  transition: background 0.15s, transform 0.15s;
}
.modal-dot.active {
  background: #fff;
  transform: scale(1.35);
}

#modal-right {
  flex: 1;
  display: flex;
  flex-direction: column;
  padding: 24px 22px 20px;
  min-width: 0;
}
#modal-title {
  font-family: 'Outfit', sans-serif;
  font-size: 1.15rem;
  font-variation-settings: 'wght' 400;
  margin: 0 36px 14px 0;
  color: #111827;
}
#modal-tabs {
  display: flex;
  border-bottom: 1px solid #e5e7eb;
  margin-bottom: 14px;
  flex-shrink: 0;
}
.tab-btn {
  background: none;
  border: none;
  padding: 7px 14px;
  font-family: 'Poppins', sans-serif;
  font-size: 0.8rem;
  cursor: pointer;
  color: #9ca3af;
  border-bottom: 2px solid transparent;
  margin-bottom: -1px;
  transition: color 0.15s, border-color 0.15s;
}
.tab-btn:hover { color: #4b5563; }
.tab-btn.active {
  color: #111827;
  border-bottom-color: #dc2626;
}
#modal-tab-content {
  flex: 1;
  overflow-y: auto;
  font-size: 0.875rem;
  line-height: 1.65;
  color: #4b5563;
}
.tab-links { display: flex; flex-wrap: wrap; gap: 8px; padding-top: 2px; }
.tab-link-item {
  display: inline-flex;
  align-items: center;
  color: #dc2626;
  text-decoration: none;
  font-size: 0.875rem;
  padding: 4px 12px;
  border: 1px solid #fca5a5;
  border-radius: 6px;
  transition: background 0.15s;
}
.tab-link-item:hover { background: #fef2f2; text-decoration: none; }

/* ===== Gallery Grid ===== */
.gallery-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
  gap: 1rem;
  padding: 1rem;
  width: 100%;
}

/* ===== Project Cards ===== */
.project-card {
  position: relative;
  overflow: hidden;
  border-radius: 10px;
  cursor: pointer;
  aspect-ratio: 1;
  background: #f3f4f6;
}
.project-card > img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  display: block;
  transition: transform 0.3s ease, opacity 0.3s ease;
}
.project-card:hover > img {
  opacity: 0.5;
  transform: scale(1.04);
}
.card-hover-overlay {
  position: absolute;
  inset: 0;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  opacity: 0;
  transition: opacity 0.25s ease;
  gap: 3px;
  padding: 8px;
}
.project-card:hover .card-hover-overlay { opacity: 1; }
.card-hover-title {
  font-size: 0.9rem;
  font-weight: 500;
  color: #111827;
  text-align: center;
}
.card-hover-cta {
  font-size: 0.7rem;
  color: #6b7280;
  letter-spacing: 0.04em;
}

/* ===== Mobile ===== */
@media (max-width: 768px) {
  #modal-overlay { align-items: flex-end; }
  #modal-card {
    width: 100vw;
    max-width: 100vw;
    height: 80vh;
    border-radius: 14px 14px 0 0;
    flex-direction: column;
  }
  #modal-left {
    width: 100%;
    height: 45%;
    border-radius: 14px 14px 0 0;
  }
  #modal-right {
    width: 100%;
    height: 55%;
    padding: 14px 16px 12px;
  }
  #modal-title { font-size: 1rem; margin-bottom: 10px; }
  .gallery-grid { grid-template-columns: repeat(auto-fill, minmax(150px, 1fr)); }
}
</style>
