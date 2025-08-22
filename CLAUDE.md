# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a personal academic website built using Hugo with a modified Academic theme. The site generates a static website for a statistics professor's professional presence.

## Build Commands

- `make` or `hugo` - Build the static site to `public/` directory
- `make open` - Build and open the site locally in browser
- `make push` - Build and deploy to remote server (requires SSH access to monster.stat.duke.edu)

## Architecture

### Content Structure
- `content/` - Markdown content files organized by section:
  - `home/` - Main page sections (about, contact, publications, etc.)
  - `cur_teaching/`, `prev_teaching/`, `prev_uoe_teaching/` - Course listings
  - `publication/` - Research publication entries
  - `software/` - Software project descriptions
  - `talk/` - Conference and presentation entries
- `static/` - Static assets (images, PDFs, CSS)
- `themes/academic/` - Hugo Academic theme with custom modifications
- `config.toml` - Hugo site configuration

### Build Process
The site uses Hugo static site generator with:
- Academic theme for academic/professional layout
- Content written in Markdown with front matter
- Static files served from `public/` after build
- Automated deployment via GitHub Actions to GitHub Pages

### GitHub Actions
- Workflow in `.github/workflows/gen_page.yml` automatically builds and deploys on main branch pushes
- Builds with Hugo, syncs to rundel.github.io repository for GitHub Pages hosting

## CV Management
LaTeX CV source is maintained in `static/cv/` with generated PDF copied to site output.