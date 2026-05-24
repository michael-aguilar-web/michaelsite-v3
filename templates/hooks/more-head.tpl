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

    /* Override emanote 1.4.0 default header styling to restore custom formatting */
    article h1 {
        padding-bottom: 0.5rem !important;
        margin-bottom: 0.5rem !important;
        font-size: 3rem !important;
        font-weight: bold !important;
        text-align: center !important;
        background: none !important;
        border-radius: 0 !important;
        padding: 0 !important;
        margin-bottom: 0.5rem !important;
        display: block !important;
    }

    article h2 {
        display: inline-block !important;
        margin-top: 1rem !important;
        margin-bottom: 1rem !important;
        font-size: 2.25rem !important;
        font-weight: bold !important;
        border-bottom: 2px solid #d1d5db !important;
    }

    article h3 {
        margin-top: 1rem !important;
        margin-bottom: 0.5rem !important;
        font-size: 1.875rem !important;
        font-weight: bold !important;
    }

    article h4 {
        /* basically just h3 but without the weird top margin, used as a replacement for h3 immediately following an h1 or h2 */
        margin-top: 0rem !important;
        margin-bottom: 0.5rem !important;
        font-size: 1.875rem !important;
        font-weight: bold !important;
    }


    article h5 {
        margin-top: 0.25rem !important;
        margin-bottom: 0.5rem !important;
        font-size: 1.25rem !important;
        font-weight: bold !important;
    }


    article h6 {
        margin-top: 0.5rem !important;
        margin-bottom: 0.5rem !important;
        font-size: 1.25rem !important;
        font-weight: bold !important;
        color: #374151 !important;
    }

    /* Custom callout styling */
    .callout {
        border-radius: 0.5rem;
        padding: 1rem;
        margin: 1.5rem 0;
        border-left: 4px solid;
    }

    .callout-title {
        font-weight: 600;
        margin-bottom: 0.5rem;
    }

    /* Callout type colors */
    .callout[data-callout="note"] {
        background-color: #d1fae5 !important;
        border-left-color: #10b981 !important;
    }

    .callout[data-callout="note"] .callout-title {
        color: #000000 !important;
    }

    .callout[data-callout="note"] .callout-icon {
        color: #10b981 !important;
    }

    .callout[data-callout="tip"] {
        background-color: rgba(16, 185, 129, 0.1);
        border-left-color: #10b981;
    }

    .callout[data-callout="tip"] .callout-title {
        color: #047857;
    }

    .callout[data-callout="warning"] {
        background-color: rgba(245, 158, 11, 0.1);
        border-left-color: #f59e0b;
    }

    .callout[data-callout="warning"] .callout-title {
        color: #b45309;
    }

    .callout[data-callout="caution"] {
        background-color: rgba(239, 68, 68, 0.1);
        border-left-color: #ef4444;
    }

    .callout[data-callout="caution"] .callout-title {
        color: #b91c1c;
    }

    .callout[data-callout="important"] {
        background-color: rgba(139, 92, 246, 0.1);
        border-left-color: #8b5cf6;
    }

    .callout[data-callout="important"] .callout-title {
        color: #6d28d9;
    }

    .callout[data-callout="info"] {
        background-color: rgba(6, 182, 212, 0.1);
        border-left-color: #06b6d4;
    }

    .callout[data-callout="info"] .callout-title {
        color: #0e7490;
    }

    .callout[data-callout="success"] {
        background-color: rgba(34, 197, 94, 0.1);
        border-left-color: #22c55e;
    }

    .callout[data-callout="success"] .callout-title {
        color: #15803d;
    }

    /* Subtitle: minimalist date block */
    /* Center only when the first paragraph is italic-only */
    article>p:first-of-type:has(> em:only-child) {
        text-align: center;
    }

    article>p:first-of-type>em:only-child {
        display: inline-block;
        max-width: 100%;
        color: #9ca3af !important;
        /* gray-400 */
        margin-top: -0.125rem;
        margin-bottom: 0.25rem;
        font-style: italic;
        font-size: 0.9rem;
        letter-spacing: 0.015em;
        line-height: 1.65;
        white-space: normal;
        overflow-wrap: anywhere;
        /* allow breaking long tokens */
        word-break: normal;
        hyphens: auto;
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
        padding: 1rem;
        box-sizing: border-box;
        z-index: 50;
        opacity: 0;
        pointer-events: none;
        transition: opacity 0.25s ease;
    }

    #modal-overlay.open {
        opacity: 1;
        pointer-events: all;
    }

    #modal-card {
        background: #fff;
        border-radius: 14px;
        width: min(95vw, 1600px);
        height: auto;
        max-height: calc(100vh - 2rem);
        display: flex;
        align-items: flex-start;
        position: relative;
        transform: translateY(100%);
        transition: transform 0.3s cubic-bezier(0.32, 0.72, 0, 1);
        overflow: hidden;
    }

    #modal-overlay.open #modal-card {
        transform: translateY(0);
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

    #modal-close:hover {
        background: #f3f4f6;
    }

    #modal-left {
        position: relative;
        flex: 0 0 auto;
        width: auto;
        height: auto;
        background: #1a1a1a;
        display: flex;
        align-items: center;
        justify-content: center;
        overflow: hidden;
    }

    #modal-left.loading::after {
        content: '';
        position: absolute;
        width: 36px;
        height: 36px;
        border: 3px solid rgba(255, 255, 255, 0.2);
        border-top-color: #fff;
        border-radius: 50%;
        animation: modal-spin 0.7s linear infinite;
        pointer-events: none;
    }

    @keyframes modal-spin {
        to {
            transform: rotate(360deg);
        }
    }

    #modal-img {
        width: 100%;
        height: 100%;
        object-fit: contain;
        transition: opacity 0.18s ease;
    }

    .modal-arrow {
        position: absolute;
        top: 50%;
        transform: translateY(-50%);
        background: rgba(255, 255, 255, 0.85);
        border: none;
        border-radius: 50%;
        width: 36px;
        height: 36px;
        cursor: pointer;
        display: flex;
        align-items: center;
        justify-content: center;
        z-index: 5;
        transition: background 0.15s;
        padding: 8px;
    }

    .modal-arrow:hover {
        background: #fff;
    }

    .modal-arrow img {
        width: 100%;
        height: 100%;
        display: block;
    }

    #modal-prev {
        left: 10px;
    }

    #modal-next {
        right: 10px;
    }

    #modal-dots {
        position: absolute;
        bottom: 12px;
        left: 50%;
        transform: translateX(-50%);
        display: flex;
        gap: 6px;
        z-index: 5;
        padding: 6px 12px;
        border-radius: 999px;
        background: rgba(0, 0, 0, 0.5);
        backdrop-filter: blur(6px);
        -webkit-backdrop-filter: blur(6px);
    }

    .modal-dot {
        width: 7px;
        height: 7px;
        border-radius: 50%;
        background: rgba(255, 255, 255, 0.45);
        border: none;
        cursor: pointer;
        padding: 0;
        transition: background 0.15s, transform 0.15s;
    }

    .modal-dot.active {
        background: #fff;
        transform: scale(1.25);
    }

    #modal-right {
        flex: 1;
        display: flex;
        flex-direction: column;
        padding: 24px 22px 20px;
        min-width: 0;
        max-height: calc(100vh - 2rem);
        overflow: hidden;
    }

    #modal-title {
        font-family: 'Outfit', sans-serif;
        font-size: 1.44rem;
        font-variation-settings: 'wght' 400;
        margin: 0 36px 8px 0;
        color: #111827;
        flex-shrink: 0;
    }

    #modal-description {
        font-family: 'Poppins', sans-serif;
        font-size: 0.95rem;
        font-weight: 400;
        color: #6b7280;
        margin: 0 0 14px 0;
        line-height: 1.45;
        flex-shrink: 0;
    }

    #modal-description:empty {
        display: none;
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

    .tab-btn:hover {
        color: #4b5563;
    }

    .tab-btn.active {
        color: #111827;
        border-bottom-color: #dc2626;
    }

    #modal-tab-content {
        flex: 1;
        min-height: 0;
        overflow-y: auto;
        font-size: 1.09rem;
        line-height: 1.65;
        color: #4b5563;
    }

    .tab-links {
        display: flex;
        flex-direction: column;
        gap: 8px;
        padding-top: 2px;
    }

    .tab-link-item {
        display: flex;
        align-items: center;
        justify-content: space-between;
        color: #dc2626;
        text-decoration: none;
        font-size: 1rem;
        padding: 10px 14px;
        border: 1px solid #fca5a5;
        border-radius: 8px;
        transition: background 0.15s;
    }

    .tab-link-item::after {
        content: '\2197\FE0E';
        font-size: 0.875rem;
        opacity: 0.6;
        flex-shrink: 0;
        margin-left: 8px;
    }

    .tab-link-item:hover {
        background: #fef2f2;
        text-decoration: none;
    }

    /* ===== Gallery Grid ===== */
    .gallery-grid {
        display: grid;
        grid-template-columns: repeat(1, 1fr);
        gap: 1rem;
        padding: 1rem;
        width: 100%;
    }

    @media (min-width: 640px) {
        .gallery-grid {
            grid-template-columns: repeat(2, 1fr);
        }
    }

    @media (min-width: 768px) {
        .gallery-grid {
            grid-template-columns: repeat(3, 1fr);
        }
    }

    @media (min-width: 1024px) {
        .gallery-grid {
            grid-template-columns: repeat(4, 1fr);
        }
    }

    /* ===== Project Cards ===== */
    .project-card,
    .gallery-tile {
        position: relative;
        overflow: hidden;
        border-radius: 10px;
        cursor: pointer;
        background: #f3f4f6;
        transform: translateZ(0);
        will-change: transform;
    }

    .project-card {
        aspect-ratio: 1;
    }

    .gallery-tile {
        display: block;
        width: 16rem;
        height: 16rem;
        flex-shrink: 0;
        text-decoration: none;
        color: inherit;
    }

    @media (max-width: 768px) {
        .gallery-tile {
            width: 100%;
            height: auto;
            aspect-ratio: 1;
        }
    }

    .project-card>img {
        position: relative;
        z-index: 0;
        width: 100%;
        height: 100%;
        object-fit: cover;
        display: block;
        transition: transform 0.3s ease;
    }

    .gallery-tile-slideshow {
        position: absolute;
        inset: 0;
        z-index: 0;
        overflow: hidden;
        transition: transform 0.3s ease;
    }

    .gallery-tile:hover .gallery-tile-slideshow {
        transform: scale(1.04);
    }

    .gallery-tile-slide {
        position: absolute;
        inset: 0;
        width: 100%;
        height: 100%;
        object-fit: cover;
        display: block;
        transform: translateX(100%);
        transition: transform 0.48s cubic-bezier(0.32, 0.72, 0, 1);
        will-change: transform;
    }

    .gallery-tile-slide.is-active {
        transform: translateX(0);
    }

    .gallery-tile-slide.is-exiting {
        transform: translateX(-100%);
    }

    .gallery-tile-slide.is-preparing {
        transition: none !important;
    }

    .project-card:hover>img {
        transform: scale(1.04);
    }

    .project-card-overlay {
        position: absolute;
        inset: 0;
        z-index: 2;
        display: flex;
        flex-direction: column;
        justify-content: flex-end;
        pointer-events: none;
    }

    .project-card-overlay::before {
        content: '';
        position: absolute;
        left: 0;
        right: 0;
        bottom: 0;
        height: 0;
        background: linear-gradient(to top, rgba(185, 28, 28, 0.7) 0%, rgba(220, 38, 38, 0.45) 45%, transparent 100%);
        opacity: 0;
        transition: height 0.3s ease, opacity 0.3s ease;
    }

    .project-card-text {
        position: relative;
        z-index: 2;
        padding: 14px 14px 12px;
    }

    .project-card-title {
        margin: 0;
        font-family: 'Outfit', sans-serif;
        font-size: 1.05rem;
        font-weight: 600;
        line-height: 1.2;
        color: #fff;
        text-shadow:
            0 1px 3px rgba(0, 0, 0, 0.9),
            0 2px 8px rgba(0, 0, 0, 0.75),
            0 0 14px rgba(0, 0, 0, 0.65),
            0 0 24px rgba(0, 0, 0, 0.45);
    }

    .gallery-tile .project-card-text {
        padding: 18px 18px 14px;
    }

    .gallery-tile-title {
        margin: 0;
        font-family: 'Outfit', sans-serif;
        font-size: 1.8rem;
        font-weight: 600;
        line-height: 1.2;
        color: #fff;
        text-shadow:
            0 1px 3px rgba(0, 0, 0, 0.9),
            0 2px 8px rgba(0, 0, 0, 0.75),
            0 0 14px rgba(0, 0, 0, 0.65),
            0 0 24px rgba(0, 0, 0, 0.45);
    }

    .project-card-description {
        margin: 0;
        font-size: 0.8rem;
        line-height: 1.45;
        color: rgba(255, 255, 255, 0.92);
        text-shadow:
            0 1px 2px rgba(0, 0, 0, 0.75),
            0 0 8px rgba(0, 0, 0, 0.45);
        max-height: 0;
        opacity: 0;
        overflow: hidden;
        transition: max-height 0.3s ease, opacity 0.25s ease, margin 0.25s ease;
    }

    .project-card-description.is-empty {
        display: none;
    }

    @media (min-width: 769px) and (hover: hover) {

        .project-card:hover .project-card-overlay::before,
        .gallery-tile:hover .project-card-overlay::before {
            height: 35%;
            opacity: 1;
        }

        .project-card:hover .project-card-description:not(.is-empty) {
            max-height: 5.5rem;
            opacity: 1;
            margin-top: 6px;
        }
    }

    @media (max-width: 768px),
    (hover: none) {

        .project-card .project-card-overlay::before,
        .gallery-tile .project-card-overlay::before {
            height: 35%;
            opacity: 1;
        }

        .project-card .project-card-description:not(.is-empty) {
            max-height: 5.5rem;
            opacity: 1;
            margin-top: 6px;
        }

        .project-card-title,
        .gallery-tile-title {
            text-shadow:
                0 1px 2px rgba(0, 0, 0, 0.75),
                0 0 8px rgba(0, 0, 0, 0.45);
        }
    }

    .info-detail {
        margin: 0;
        line-height: 1.65;
        color: #4b5563;
    }

    .info-detail p {
        margin: 0 0 0.75rem 0;
    }

    .info-detail p:last-child {
        margin-bottom: 0;
    }

    .info-detail ul,
    .info-detail ol {
        margin: 0 0 0.75rem 0;
        padding-left: 1.25rem;
    }

    .info-detail ul:last-child,
    .info-detail ol:last-child {
        margin-bottom: 0;
    }

    .info-detail li {
        margin: 0 0 0.25rem 0;
    }

    .info-detail li:last-child {
        margin-bottom: 0;
    }

    .info-detail strong {
        font-weight: 600;
        color: #111827;
    }

    .info-detail em {
        font-style: italic;
    }

    .project-info-body {
        display: none;
    }

    .info-empty {
        color: #9ca3af;
        font-size: 1.06rem;
        margin: 0;
    }

    /* ===== Gallery index (mobile scroll) ===== */
    @media (max-width: 768px) {
        main:has(.gallery-tile):not(:has(.project-card)) {
            display: block;
            flex: none;
        }
    }

    /* ===== Mobile ===== */
    @media (max-width: 768px) {
        #modal-overlay {
            align-items: flex-end;
            padding: 0;
        }

        #modal-card {
            width: 100vw;
            max-width: 100vw;
            height: 100dvh;
            min-height: 100dvh;
            max-height: 100dvh;
            margin-bottom: 0;
            border-radius: 0;
            flex-direction: column;
            overflow-x: hidden;
            overflow-y: auto;
            -webkit-overflow-scrolling: touch;
        }

        #modal-close {
            position: fixed;
            top: max(10px, env(safe-area-inset-top));
            right: 12px;
            z-index: 60;
        }

        #modal-left {
            width: auto;
            max-width: 100%;
            margin: 0 auto;
            flex: 0 0 auto;
            border-radius: 0;
        }

        #modal-right {
            width: 100%;
            flex: 0 0 auto;
            min-height: auto;
            max-height: none;
            padding: 14px 16px 12px;
            padding-bottom: max(12px, env(safe-area-inset-bottom));
            overflow: visible;
            display: flex;
            flex-direction: column;
        }

        #modal-tab-content {
            flex: 0 0 auto;
            min-height: auto;
            overflow: visible;
        }

        #modal-title {
            font-size: 1.25rem;
            margin-bottom: 6px;
        }

        #modal-description {
            font-size: 0.9rem;
            margin-bottom: 10px;
        }
    }
</style>

<script>
    (function () {
        let _images = [], _slide = 0, _tabs = {};

        function initProjectCardOverlays() {
            document.querySelectorAll('.project-card, .gallery-tile').forEach(card => {
                if (card.querySelector('.project-card-overlay')) return;
                const overlay = document.createElement('div');
                overlay.className = 'project-card-overlay';
                const text = document.createElement('div');
                text.className = 'project-card-text';
                const title = document.createElement('p');
                title.className = card.classList.contains('gallery-tile')
                    ? 'gallery-tile-title'
                    : 'project-card-title';
                const desc = document.createElement('p');
                desc.className = 'project-card-description';
                title.textContent = card.dataset.title || '';
                desc.textContent = card.dataset.description || '';
                if (!card.dataset.description) desc.classList.add('is-empty');
                text.appendChild(title);
                text.appendChild(desc);
                overlay.appendChild(text);
                card.appendChild(overlay);
            });
        }

        function formatInfoText(text) {
            if (!text) return '';
            let s = text
                .replace(/&/g, '&amp;')
                .replace(/</g, '&lt;')
                .replace(/>/g, '&gt;');
            s = s.replace(/\*\*(.+?)\*\*/g, '<strong>$1</strong>');
            s = s.replace(/\*(.+?)\*/g, '<em>$1</em>');
            s = s.replace(/\n/g, '<br>');
            return s;
        }

        function getInfoDetailHtml(card) {
            const body = card.querySelector('.project-info-body');
            if (body) return body.innerHTML.trim();
            return formatInfoText(card.dataset.info || '');
        }

        function clearGalleryTileSlideshows() {
            document.querySelectorAll('.gallery-tile').forEach(tile => {
                if (tile._slideshowTimer) {
                    clearTimeout(tile._slideshowTimer);
                    tile._slideshowTimer = null;
                }
                tile._slideshowAnimating = false;
            });
        }

        function parseSlideshowImages(tile) {
            if (!tile.dataset.slideshow) return [];
            try {
                return JSON.parse(tile.dataset.slideshow);
            } catch {
                return [];
            }
        }

        function randomSlideshowDelay(min, max) {
            return min + Math.random() * (max - min);
        }

        function buildSlideshowTrack(tile, images) {
            if (tile.querySelector('.gallery-tile-slideshow')) return tile.querySelector('.gallery-tile-slideshow');

            const existingImg = tile.querySelector('img');
            const alt = existingImg?.getAttribute('alt') || tile.dataset.title || '';
            const track = document.createElement('div');
            track.className = 'gallery-tile-slideshow';

            const slideA = document.createElement('img');
            slideA.className = 'gallery-tile-slide is-active';
            slideA.src = images[0];
            slideA.alt = alt;
            slideA.loading = 'lazy';

            const slideB = document.createElement('img');
            slideB.className = 'gallery-tile-slide';
            slideB.src = images[1] || images[0];
            slideB.alt = alt;
            slideB.loading = 'lazy';

            track.appendChild(slideA);
            track.appendChild(slideB);

            if (existingImg) existingImg.replaceWith(track);
            else tile.insertBefore(track, tile.firstChild);

            return track;
        }

        function initGalleryTileSlideshows() {
            clearGalleryTileSlideshows();

            document.querySelectorAll('.gallery-tile').forEach(tile => {
                const images = parseSlideshowImages(tile);
                if (images.length <= 1) return;

                const track = buildSlideshowTrack(tile, images);
                const slides = track.querySelectorAll('.gallery-tile-slide');
                const state = {
                    images,
                    idx: 0,
                    active: slides[0],
                    incoming: slides[1]
                };

                const prepareSlide = (slide) => {
                    slide.classList.add('is-preparing');
                    slide.classList.remove('is-active', 'is-exiting');
                    void slide.offsetWidth;
                    slide.classList.remove('is-preparing');
                };

                const advance = () => {
                    if (tile._slideshowAnimating) return;
                    tile._slideshowAnimating = true;

                    const nextIdx = (state.idx + 1) % state.images.length;
                    state.incoming.src = state.images[nextIdx];
                    prepareSlide(state.incoming);

                    state.active.classList.remove('is-active');
                    state.active.classList.add('is-exiting');

                    requestAnimationFrame(() => {
                        state.incoming.classList.add('is-active');
                    });

                    const finish = () => {
                        prepareSlide(state.active);
                        const prevActive = state.active;
                        state.active = state.incoming;
                        state.incoming = prevActive;
                        state.idx = nextIdx;
                        tile._slideshowAnimating = false;
                    };

                    state.active.addEventListener('transitionend', finish, { once: true });
                };

                const scheduleNext = () => {
                    tile._slideshowTimer = setTimeout(() => {
                        advance();
                        scheduleNext();
                    }, randomSlideshowDelay(2500, 6500)); // 2.5s - 6.5s
                };

                const stop = () => {
                    if (tile._slideshowTimer) {
                        clearTimeout(tile._slideshowTimer);
                        tile._slideshowTimer = null;
                    }
                };

                const start = () => {
                    stop();
                    tile._slideshowTimer = setTimeout(() => {
                        scheduleNext();
                    }, randomSlideshowDelay(800, 3500));
                };

                start();
                tile.addEventListener('mouseenter', stop);
                tile.addEventListener('mouseleave', start);
            });
        }

        function initGalleryPage() {
            if (!document.querySelector('.project-card') && !document.querySelector('.gallery-tile')) return;
            initProjectCardOverlays();
            initGalleryTileSlideshows();
        }

        window.openModal = function (card) {
            _images = JSON.parse(card.dataset.images);
            _tabs = {
                infoSummary: card.dataset.description || '',
                infoDetailHtml: getInfoDetailHtml(card),
                links: JSON.parse(card.dataset.links || '[]')
            };

            document.getElementById('modal-title').textContent = card.dataset.title;

            const descEl = document.getElementById('modal-description');
            if (descEl) descEl.textContent = _tabs.infoSummary;

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
            renderTab('info');
            const modalCard = document.getElementById('modal-card');
            if (modalCard) modalCard.scrollTop = 0;
            document.getElementById('modal-overlay').classList.add('open');
            document.body.style.overflow = 'hidden';
        };

        window.closeModal = function () {
            const modalCard = document.getElementById('modal-card');
            if (modalCard) modalCard.scrollTop = 0;
            document.getElementById('modal-overlay').classList.remove('open');
            document.body.style.overflow = '';
            resetModalImagePanel();
        };

        window.handleOverlayClick = function (e) {
            if (e.target === document.getElementById('modal-overlay')) closeModal();
        };

        function getModalImageBounds() {
            const rem = parseFloat(getComputedStyle(document.documentElement).fontSize) || 16;
            const isMobile = window.matchMedia('(max-width: 768px)').matches;

            if (isMobile) {
                return {
                    maxWidth: window.innerWidth,
                    maxHeight: Math.min(window.innerWidth, window.innerHeight * 0.72)
                };
            }

            const viewportCap = window.innerHeight - 2 * rem;
            const cardCap = Math.min(window.innerWidth * 0.95, 1600);
            return {
                maxWidth: Math.min(cardCap * 0.5, viewportCap),
                maxHeight: viewportCap
            };
        }

        function fitImageWithinBounds(naturalWidth, naturalHeight, maxWidth, maxHeight) {
            if (!naturalWidth || !naturalHeight) return null;

            const scale = Math.min(maxWidth / naturalWidth, maxHeight / naturalHeight, 1);
            return {
                width: Math.round(naturalWidth * scale),
                height: Math.round(naturalHeight * scale)
            };
        }

        function fitModalImagePanel(sourceImg) {
            const left = document.getElementById('modal-left');
            const right = document.getElementById('modal-right');
            const card = document.getElementById('modal-card');
            if (!left || !sourceImg?.naturalWidth) return;

            const isMobile = window.matchMedia('(max-width: 768px)').matches;
            const bounds = getModalImageBounds();
            const fit = fitImageWithinBounds(
                sourceImg.naturalWidth,
                sourceImg.naturalHeight,
                bounds.maxWidth,
                bounds.maxHeight
            );
            if (!fit) return;

            left.style.width = fit.width + 'px';
            left.style.height = fit.height + 'px';

            if (right) {
                if (isMobile) {
                    right.style.minHeight = '';
                    right.style.maxHeight = '';
                } else {
                    right.style.minHeight = fit.height + 'px';
                    right.style.maxHeight = fit.height + 'px';
                }
            }

            if (card) {
                if (isMobile) {
                    card.style.maxHeight = '';
                    card.style.height = '';
                } else {
                    card.style.maxHeight = fit.height + 'px';
                    card.style.height = fit.height + 'px';
                }
            }
        }

        function resetModalImagePanel() {
            const left = document.getElementById('modal-left');
            const right = document.getElementById('modal-right');
            const card = document.getElementById('modal-card');
            if (left) {
                left.style.width = '';
                left.style.height = '';
            }
            if (right) {
                right.style.minHeight = '';
                right.style.maxHeight = '';
            }
            if (card) {
                card.style.maxHeight = '';
                card.style.height = '';
            }
        }

        function applyLoadedSlide(img, left, sourceImg) {
            img.style.opacity = '1';
            left.classList.remove('loading');
            fitModalImagePanel(sourceImg);
        }

        function goToSlide(i) {
            _slide = i;
            const img = document.getElementById('modal-img');
            const left = document.getElementById('modal-left');
            const preload = new Image();
            let applied = false;

            const finish = (sourceImg) => {
                if (applied) return;
                applied = true;
                img.src = sourceImg.src;
                applyLoadedSlide(img, left, sourceImg);
            };

            preload.onload = () => finish(preload);
            preload.onerror = () => {
                img.src = _images[i];
                if (img.complete && img.naturalWidth) finish(img);
                else img.onload = () => finish(img);
            };

            img.style.opacity = '0';
            left.classList.add('loading');
            preload.src = _images[i];
            if (preload.complete && preload.naturalWidth) finish(preload);

            document.querySelectorAll('.modal-dot').forEach((d, j) => d.classList.toggle('active', j === i));
        }

        window.stepSlide = function (dir) {
            goToSlide((_slide + dir + _images.length) % _images.length);
        };

        window.switchTab = function (btn, name) {
            document.querySelectorAll('.tab-btn').forEach(t => t.classList.remove('active'));
            btn.classList.add('active');
            renderTab(name);
        };

        function renderTab(name) {
            const el = document.getElementById('modal-tab-content');
            if (!el) return;
            if (name === 'links') {
                if (_tabs.links.length === 0) {
                    el.innerHTML = '<p style="color:#9ca3af;font-size:1.06rem;">No links added yet.</p>';
                } else {
                    el.innerHTML = '<div class="tab-links">' +
                        _tabs.links.map(l => `<a class="tab-link-item" href="${l.url}" target="_blank" rel="noopener">${l.label}</a>`).join('') +
                        '</div>';
                }
            } else if (name === 'info') {
                const detail = _tabs.infoDetailHtml;
                if (!detail) {
                    el.innerHTML = '<p class="info-empty">No info added yet.</p>';
                    return;
                }
                el.innerHTML = '';
                const div = document.createElement('div');
                div.className = 'info-detail';
                div.innerHTML = detail;
                el.appendChild(div);
            }
        }

        if (!window._galleryKeydownBound) {
            document.addEventListener('keydown', e => {
                const overlay = document.getElementById('modal-overlay');
                if (!overlay || !overlay.classList.contains('open')) return;
                if (e.key === 'Escape') closeModal();
                if (e.key === 'ArrowLeft') stepSlide(-1);
                if (e.key === 'ArrowRight') stepSlide(1);
            });
            window._galleryKeydownBound = true;
        }

        if (!window._galleryModalResizeBound) {
            window.addEventListener('resize', () => {
                const overlay = document.getElementById('modal-overlay');
                const img = document.getElementById('modal-img');
                if (!overlay?.classList.contains('open') || !img?.naturalWidth) return;
                fitModalImagePanel(img);
            });
            window._galleryModalResizeBound = true;
        }

        function scheduleGalleryInit() {
            requestAnimationFrame(initGalleryPage);
        }

        if (document.readyState === 'loading') {
            document.addEventListener('DOMContentLoaded', scheduleGalleryInit);
        } else {
            scheduleGalleryInit();
        }

        if (!window._galleryHotReloadBound) {
            window.addEventListener('EMAHotReload', scheduleGalleryInit);
            window._galleryHotReloadBound = true;
        }
    })();
</script>