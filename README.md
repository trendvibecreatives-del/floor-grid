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
- **Tic-tac-toe (2 teams)** – Red and Blue take turns claiming tiles. 5 levels, from 3×3 (3 in a row) up to
  6×8 (5 in a row) with turn timers. A coloured frame shows whose turn it is; "Undo last move" fixes mistakes.
- **Asteroid Attack** - asteroids fly toward you and grow. Hit them with balls before they crash
  into the screen. Armored rocks need 2 hits, golden comets repair the shield, combos up to x4.
  Realistic lit 3D rocks, nebula and planet backdrop, fireball explosions, optional screen-wall window frames.

**Kids & learning**
- **Math Balloons** – a sum appears (and is read aloud); hit the balloon with the answer. Levels: adding to 10,
  taking away, within 20, times tables. Wrong balloons go grey so kids can try again; stars for first-try answers.
- **What Comes Next?** – colour, shape and number patterns; hit the piece that comes next.

**Logic & memory**
- **Memory Match** – flip two cards at a time to find the animal pairs (6 to 12 pairs).
- **Echo** – watch the pads light up, then hit them in the same order; the pattern grows each round.

Input can be hands (wall), feet (floor), or **thrown balls** (wall, strike-style).
