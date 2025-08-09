# hub-meta

Modern hub page (single file) with your current tools pre-filled.

## What's included
- **Subscriptions**: Wallos (`http://localhost:8282/`)
- **Reading**: Reader (`http://localhost:8080/#/`)
- **Media Tools**: MoonTV (`http://localhost:3000/`), Blinko (`http://localhost:1111/`)
- **Streaming**: Netflix / Max

## Deploy on GitHub Pages
Settings → Pages → **Deploy from a branch** → Branch: `main` / Folder: `/ (root)`

## Local preview
```bash
make serve
# or
python3 -m http.server 5173
```

## Add more cards
Duplicate one `<a class="card">` block inside the desired section, edit emoji/title/desc/link.
