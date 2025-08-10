# hub-meta

Modern hub page (single file) with your current tools pre-filled.

## What's included
- **Subscriptions**: Wallos (https://wallos.hub.avecrouge.com/)
- **Reading**: Reader (https://reader.hub.avecrouge.com/)
- **Media Tools**: MoonTV (https://moontv.hub.avecrouge.com/), Blinko (https://blinko.hub.avecrouge.com/)
- **Streaming**: Netflix / Max / Disney+ (https://www.disneyplus.com/zh-hk/home)

## Deploy on GitHub Pages
Settings → Pages → **Deploy from a branch** → Branch: `main` / Folder: `/ (root)`

## Local preview
```bash
make serve
# or
python3 -m http.server 5173
```

## Add more cards
Duplicate one `<a class="card">` block inside the desired section, edit icon/title/desc/link.
