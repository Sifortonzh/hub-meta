# Beautiful arena · Hub v3

A tiny, aesthetic **quick‑launch hub** for your everyday links — blog, streaming, tools, and admin panels — built with **pure HTML + CSS + a pinch of vanilla JS**. No build step, no frameworks, loads fast, looks good in both **light/dark** (via `prefers-color-scheme`).

> Keyboard shortcuts: press **`/`** to focus the filter bar · press **Enter** to Google the text you typed.

---

## Features

- **Zero‑dependency, zero‑build**: a single `index.html` serves the whole hub.
- **Auto dark/light**: honors the system’s `prefers-color-scheme`.
- **Fast & minimal** UI: responsive grid, soft shadows, subtle accents.
- **Search-as-you-type** filter + **Enter→Google** shortcut.
- **Accessible by default**: focus ring, clear hierarchy, readable contrast.
- **Easy to customize**: edit or duplicate the “card” block; plug any icon you like.

---

## Project Structure

```
hub-meta/
└─ index.html      # the whole site in one file (HTML + CSS + a tiny script)
```

No npm, no bundlers, no CDN required to run. Just open the file.

---

## Quick Start

### Option A — Open locally
1. Double‑click `index.html`, or
2. Serve it with any static server (e.g., Python):
   ```bash
   python3 -m http.server 8080
   # then open http://localhost:8080/index.html
   ```

### Option B — Deploy to GitHub Pages
1. Push this folder to a GitHub repo (e.g., `Sifortonzh/hub-meta`).
2. In **Settings → Pages**, select:
   - **Source**: `Deploy from a branch`
   - **Branch**: `main` → `/ (root)`
3. Wait for the green check, then open the Pages URL.

### Option C — Serve behind NGINX
A tiny NGINX config snippet:
```nginx
server {
  listen 80;
  server_name hub.example.com;

  root /var/www/hub-meta;
  index index.html;

  location / {
    try_files $uri $uri/ =404;
  }
}
```

> Tip: Put the repo behind **Cloudflare** for global caching + HTTPS. No origin changes required.

---

## Current Sections & Links

### Blog
| Name | URL | Notes |
| --- | --- | --- |
| Beautiful arena | http://avecrouge.top | Main blog |
| WP · avecrouge.org | https://avecrouge.org | WordPress |
| TP · avecrouge.com | https://avecrouge.com | Typecho |

### Streaming
| Name | URL | Notes |
| --- | --- | --- |
| Netflix | https://www.netflix.com/browse | Streaming |
| Max (HBO) | https://play.hbomax.com/ | HBO & more |
| Disney+ | https://www.disneyplus.com/home | Streaming |
| Emby | http://8.148.147.163:8096 | Personal media server |

### Tools
| Name | URL | Notes |
| --- | --- | --- |
| Reader | http://154.36.164.28:8080 | Read later |
| PDFTrans | http://8.148.147.163:7860 | PDF translate |
| Kod | http://kod.avecrouge.top/#desktop | File manager |
| Cloudreve | http://8.148.147.163:5212/home | Cloud drive |
| AList | http://8.148.147.163:5244 | File index |

### Tech
| Name | URL | Notes |
| --- | --- | --- |
| BT Panel | https://8.148.147.163:8899/home | Server control |
| BT Panel 2 | https://154.36.164.28:8889 | Server control |
| Blog Admin | http://www.avecrouge.top/admin/index.php | Typecho backend |
| hPanel | https://hpanel.hostinger.com | Hostinger |

### Community
| Name | URL | Notes |
| --- | --- | --- |
| KVIP | https://www.1000qm.vip/forum.php | Forum |
| Qidian | https://www.qidian.com | Reading & community |
| Zongheng | https://www.zongheng.com | Reading & community |

> The above mirrors the current `index.html`. Update at will.

---

## Customization

### 1) Edit or add a card
Each card follows this pattern (inside a section’s grid):
```html
<a class="card" href="https://example.com" target="_blank" rel="noopener noreferrer">
  <div class="icon">
    <img src="https://cdn.jsdelivr.net/gh/simple-icons/simple-icons/icons/netflix.svg" alt="Netflix"/>
  </div>
  <h3>Netflix</h3>
  <p>Streaming</p>
</a>
```
- Replace `href` with your link.
- Swap the icon `src` for any SVG/PNG (CDN or local).
- Keep `alt` meaningful for accessibility.

### 2) Icons
- **Simple Icons**: `https://cdn.jsdelivr.net/gh/simple-icons/simple-icons/icons/<name>.svg`
- **Project logos**: official repos, docs, or a stable CDN.
- For best legibility at the default size, pick icons with clear silhouettes.

### 3) Favicon
The project embeds a lightweight SVG favicon in the `<head>`. Replace the `href="data:image/svg+xml,...` with your icon or a file path, e.g.:
```html
<link rel="icon" href="/favicon.svg" type="image/svg+xml" />
```

### 4) Colors & typography
- Tweak CSS custom properties in the `:root` block (and the dark variant within the `@media (prefers-color-scheme: dark)` block).
- The current font stack uses **IBM Plex Sans** (system fallbacks included). Swap to your preferred font stack if needed.

### 5) Grid density
- The card grid uses `grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));`
- Change the `minmax(…)` value to make cards wider or denser.

---

## Power User Notes

- **Filter bar**: Type to filter visible cards by their text. Press **Enter** to Google the query in a new tab.
- **Focus**: Press **`/`** anywhere to jump to the filter bar.
- **Accessibility**: Keyboard focus ring is enabled; headings and contrasts are tuned for readability.
- **No tracking**: No analytics are built‑in. Add your own if you need them (e.g., Umami/GA).

---

## Changelog

- **2025‑09‑21**: Updated **AList** link/icon & **Cloudreve** link/icon; tightened wording; added this README v3.

---

## Roadmap (ideas)

- Optional **config JSON** → auto-build cards (still keep a no-build mode).
- Optional **search providers** dropdown (Google/Bing/Scholar/YouTube).
- Tiny **Service Worker** for offline icon caching.

---

## License

This repository is intended for personal use. If you plan to publish a public fork, consider adding a license (e.g., **MIT**) to clarify permissions.
