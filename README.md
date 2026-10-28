# Floor Grid

> **Proprietary software. © 2026 Trend Vibe Creatives. All rights reserved.**
> Using, copying, hosting or selling this software without written permission is not allowed. See [LICENSE](LICENSE).

Interactive projected tile games with no wiring. A projector shows a grid on a wall or floor,
a camera watches the players, and an AI pose model (MediaPipe) detects which tile a hand or foot is on.

**Open the app:** https://trendvibecreatives-del.github.io/floor-grid/

Use Chrome or Edge. Setup steps, the equipment list, and troubleshooting tips are in [SETUP.md](SETUP.md).

## Run it offline / locally

Download this repo and double-click `START.bat` (Windows). It runs a small local server with Python
if available, or opens `floor-grid.html` directly.

## Games

- **Test tiles** – a tile lights up while it's touched. Use this to check tracking.
- **Hit the lights** – hit the pulsing green tile as fast as you can.
- **Lava floor** – stay off tiles that turn red. 3 lives.
- **Tic-tac-toe (2 teams)** – Red and Blue take turns claiming tiles. Three in a row wins.
- **Asteroid Attack** - asteroids fly toward you and grow. Hit them with balls before they crash
  into the screen. Armored rocks need 2 hits, golden comets repair the shield, combos up to x4.

Input can be hands (wall), feet (floor), or **thrown balls** (wall, strike-style).
