# OpenLeaf Studio — Free Unlimited LaTeX IDE & PDF Compiler

OpenLeaf Studio is a full-featured, zero-limit, zero-ad LaTeX IDE inspired by [Overleaf](https://www.overleaf.com/about/features-overview) and [Overleaf Community Edition](https://github.com/overleaf/overleaf).

## Unlocked Features (100% Free, Zero Paywalls)
1. **Multi-File Project Workspace**: Create, upload, edit, and organize `.tex` and `.bib` files with recursive `\input{}` and `\include{}` resolution.
2. **Instant Browser Typesetting + Cloud TeX Live Fallback**:
   - **Instant Browser Engine**: Zero compile timeouts, instant math typesetting via [KaTeX](https://cdn.jsdelivr.net/npm/katex@0.16.11/dist/katex.min.js), automatic section/equation/theorem numbering, `booktabs` tables, and 1-column / 2-column academic paper layout.
   - **Cloud TeX Live 2026 Engine (`pdflatex`, `xelatex`, `lualatex`)**: Integrates with [YtoTech LaTeX-on-HTTP](https://github.com/YtoTech/latex-on-http) and your own `/api/compile` serverless function or Docker container.
3. **Unlocked Overleaf Premium Features**:
   - **Math Symbol Palette** & **Visual Helper Mode** (point-and-click table, matrix, and theorem builders).
   - **BibTeX Citation Manager**: Parses `.bib` files and lets you insert `\cite{key}` with a single click.
   - **Project Version History & Labeled Snapshots**: Save and restore unlimited project snapshots locally.
   - **One-Click High-Resolution PDF & `.zip` Source Export**.

## Quick Deploy to Vercel or GitHub Pages
1. Push this directory to a new GitHub repository:
   ```bash
   git init
   git add .
   git commit -m "Deploy OpenLeaf Studio"
   git branch -M main
   git remote add origin https://github.com/<your-username>/openleaf-studio.git
   git push -u origin main
   ```
2. **GitHub Pages (Automatic)**: Go to **Settings -> Pages** in your GitHub repo and select **GitHub Actions** as the source. The included `.github/workflows/deploy.yml` workflow will publish your live site automatically.
3. **Vercel (Serverless Full-Stack)**: Import your GitHub repository at `https://vercel.com/new` — Vercel automatically detects `vercel.json`, serves `public/index.html`, and deploys `api/compile.js`.
4. **Unlimited Local/Self-Hosted Docker TeX Live Server**:
   ```bash
   docker compose up --build -d
   ```
   Open `http://localhost:3000` for unlimited native TeX Live compilation.
