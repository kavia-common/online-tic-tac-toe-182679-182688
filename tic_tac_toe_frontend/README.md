# Tic Tac Toe (Astro)

A simple, modern, and accessible Tic Tac Toe game built with Astro. Two players can play locally in the browser. Styled with the Ocean Professional theme (primary #2563EB, secondary/success #F59E0B, error #EF4444, background #f9fafb, surface #ffffff, text #111827).

## How it works

- X always starts.
- Players alternate turns by clicking a cell or focusing a cell and pressing Enter/Space.
- The game detects wins and draws and displays the status via an aria-live region.
- Press "Reset Game" to clear the board and start over.

## Project Structure

```text
tic_tac_toe_frontend/
├── astro.config.mjs
├── package.json
├── src/
│   ├── components/
│   │   ├── Game.astro        # Main game component with logic + UI
│   │   └── ThemeToggle.astro # Optional light/dark toggle button
│   ├── layouts/
│   │   └── Layout.astro      # Imports global styles and wraps pages
│   ├── pages/
│   │   └── index.astro       # Home page that renders the game
│   └── styles/
│       └── global.css        # Global CSS (resets, base typography, theme vars)
└── tsconfig.json
```

## Run locally

From the container root folder (`tic_tac_toe_frontend`):

```bash
npm install
npm run dev
```

The app starts on port 3000 (configured in astro.config.mjs). Visit:
- http://localhost:3000

To build and preview:

```bash
npm run build
npm run preview
```

## Accessibility

- Cells are focusable buttons with role="gridcell".
- Keyboard: use Tab to move focus and Enter/Space to mark a cell.
- Status uses `aria-live="polite"` for screen reader updates.
- Visible focus outlines are provided.

## Notes

- No backend or environment variables are required beyond the existing setup.
- The game logic is implemented in vanilla TypeScript within an Astro component (no React/Preact dependency).
