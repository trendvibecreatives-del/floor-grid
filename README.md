# Floor Grid

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
- **Meteor Storm** – meteors fall toward a city. Hit them with balls before they land. Big rocks
  split in two, golden comets repair the shield, combos multiply points, waves get faster.

Input can be hands (wall), feet (floor), or **thrown balls** (wall, strike-style).
