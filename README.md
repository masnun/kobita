# কবিতা

Bengali poetry site. Jekyll + GitHub Pages.

## Add a poem

Drop a markdown file in `_poems/`. Name it `YYYY-MM-DD-slug.md`:

```markdown
---
title: কবিতার নাম
date: 2026-05-25
---
প্রথম লাইন
দ্বিতীয় লাইন

নতুন স্তবক এখানে শুরু।
```

Single newline = line break. Blank line = new stanza. No layout needed — `_config.yml` sets it.

## Run locally

```bash
bundle install
bundle exec jekyll serve
# http://localhost:4000/kobita/
```

## Deploy to GitHub Pages (kobita.xyz)

1. Push repo to GitHub (any repo name works with a custom domain).
2. **Settings → Pages → Source = "Deploy from a branch"**, branch `main`, folder `/ (root)`.
3. **Settings → Pages → Custom domain** = `kobita.xyz`. The `CNAME` file in this repo already sets it.
4. DNS at your registrar — apex `kobita.xyz`:
   - **A** records → `185.199.108.153`, `185.199.109.153`, `185.199.110.153`, `185.199.111.153`
   - **AAAA** records → `2606:50c0:8000::153`, `2606:50c0:8001::153`, `2606:50c0:8002::153`, `2606:50c0:8003::153`
   - **www** → CNAME → `<username>.github.io`
5. Wait for DNS, then tick **Enforce HTTPS** in Settings → Pages.

## Structure

```
_config.yml      site config + poems collection
_layouts/        default.html (shell), poem.html (single poem)
_poems/          one markdown file per poem
index.html       lists all poems, newest first
assets/css/      typography + layout
```
