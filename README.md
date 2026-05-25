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

## Deploy to GitHub Pages

1. Push repo to GitHub. For a **project page** (`username.github.io/kobita`), repo name = `kobita` and keep `baseurl: "/kobita"` in `_config.yml`.
   For a **user page** (`username.github.io`), repo name = `username.github.io` and set `baseurl: ""`.
2. Repo **Settings → Pages → Build and deployment → Source = "Deploy from a branch"**, branch `main`, folder `/ (root)`.
3. GitHub builds the Jekyll site automatically. Live in ~1 min.

## Structure

```
_config.yml      site config + poems collection
_layouts/        default.html (shell), poem.html (single poem)
_poems/          one markdown file per poem
index.html       lists all poems, newest first
assets/css/      typography + layout
```
