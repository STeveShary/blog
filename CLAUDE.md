# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Commands

```bash
make serve      # Run local dev server with drafts enabled, auto-navigates to changed pages
make build      # Build site with minification (output to public/)
```

The Hugo theme (PaperMod) is managed as a Go module (`go.mod`/`go.sum`), not a git submodule.

## Architecture

This is a Hugo static site blog deployed to GitHub Pages at `deployedthoughts.dev`.

- **Theme**: [hugo-PaperMod](https://github.com/adityatelange/hugo-PaperMod), configured via `hugo.toml`
- **Content**: Blog posts live in `content/posts/` as Markdown files with YAML front matter (`title`, `tags`, `draft`)
- **Deployment**: Pushing to `main` triggers `.github/workflows/deploy.yml`, which builds with `hugo --minify` and publishes `public/` to the `gh-pages` branch via `peaceiris/actions-gh-pages`
- **Custom domain**: Maintained via `static/CNAME` (copied to `public/` on build)

The `public/` and `resources/` directories are gitignored — they are build artifacts.
