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
