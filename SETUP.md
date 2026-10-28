# Floor Grid – test setup (3×3 tiles)

## Wall test (start here)

Players tap tiles projected on a wall with their hands.

1. Put the projector across the room, facing a plain, light-colored wall.
2. Put the camera (laptop, phone, or webcam) **next to the projector or just above it**, facing the same wall.
   Keeping the camera close to the projector makes the hand position match the tile people see.
3. Make the projected grid about 2 m wide so players can reach every tile.
4. In the app, set **Track** to **Hands (wall)**, then calibrate by clicking the 4 projected corners in the camera image.
5. Players stand 1–2 m from the wall and tap tiles. The camera sees them from behind, which is fine.

Wall tips:
- The camera can't tell "touching the wall" from "hand just in front of it". A hand held over a tile counts.
  Raise **Touch delay** (300–400 ms) if tiles trigger when people just reach toward them.
- Players shouldn't stand in the projector beam more than needed. Their shadow hides tiles.
  Mounting the projector high and angled down helps.
- Make sure people's arms aren't hidden behind their own bodies from the camera's view. A camera a bit to the side can help.

## Ball throwing (strike-style)

Players throw soft balls at the wall instead of touching it.

1. Put the camera **right next to the projector** (as close as possible, same direction).
   This hides players' shadows from the camera and makes the hit point line up with the tiles.
2. Set **Track** to **Ball (throwing)** and calibrate as usual.
3. Players throw from a line 3+ m from the wall. Soft foam or plastic balls work best.
4. Read the message under the camera view. In ball mode it shows the threshold, how much motion
   it sees right now, and what happened with the last throw ("Hit counted on tile 5",
   "Too much motion", "hidden behind a player", and so on).
5. Open **Settings**, tick **Show motion on camera**, and throw a few balls:
   - Red pixels = what the camera sees moving. A yellow ring = where it counted the hit.
   - Leave **Auto threshold** on. It adjusts to how dark and grainy your camera picture is.
   - Throws not counted → lower **Smallest ball**, or untick Auto and lower the threshold.
   - Hits counted on the wrong tile → move the camera closer to the projector and recalibrate.
   - "Hidden behind a player" → mount the camera higher (above the projector, looking over
     players' heads), or have players throw from the side.
6. Games that work with balls: **Test tiles**, **Hit the lights**, **Tic-tac-toe (2 teams)**.

Notes:
- In ball mode, empty tiles are light gray-blue, not black, so the wall is lit and the ball shows up.
- Tiles don't blink or pulse in ball mode, because the camera would read blinking as motion.
- Right after the picture changes (a hit, a new target), the app ignores motion for about 0.35 s.
  Two balls thrown at almost the same moment may count as one.
- A white or bright ball against the dark tiles is easiest for the camera to see.

## Floor setup (later)

For the floor, set **Track** to **Feet (floor)**.

### What you need

| Item | Notes |
|---|---|
| Laptop (Windows, Chrome or Edge) | Needs internet the first time to load the AI model |
| Projector + HDMI cable | Any projector works for a test. Point it at the floor (ceiling mount, tall shelf, or tripod tilted down) |
| USB webcam | 1080p, 60fps if possible (e.g. Logitech C920/C922). Your laptop's built-in camera can't see the floor well |
| Long USB extension cable (3–5 m) | So the webcam can sit up high |
| Tripod or clamp mount for the webcam | Put it high (2–3 m) and angled down at the grid |
| Floor space about 2 × 2 m | Each tile ≈ 60 cm. Matte, light-colored floor is best |
| Dim room | Brighter projection and better tracking |

No projector yet? Put painter's tape on the floor to mark a 3×3 grid and calibrate to the tape's corners.
The screen preview shows what's lit.

## Run it

1. Double-click `START.bat` (it opens the app in your browser).
2. **Projector:** click *Open projector window*, drag that window onto the projector screen, then press *Fullscreen*.
3. **Camera:** pick your USB webcam and press *Start*. Allow camera access.
4. **Calibrate:** press *Calibrate*. The projector shows numbered corners 1–4.
   Click each one in the camera image, in order.
5. **Play:** choose *Test tiles* first and walk on the grid. A tile should light up under each foot.
   Then try *Hit the lights* or *Lava floor*.

## If tracking is off

- Hands or feet not detected: make sure the camera sees people's whole body, add light, or switch to the *Accurate* AI model.
- Tiles flicker: raise *Touch delay* in Settings (try 250 ms).
- Wrong tile lights up: recalibrate, and click the corners carefully.
- Moved the camera or projector: recalibrate.
