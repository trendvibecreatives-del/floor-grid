# Plan: realistic effects for the projector game wall

Goal: games that look like the screen-wall rooms (real-looking asteroids, fire, smoke, debris),
but on **one projected wall with no screens and no wiring**, with balls detected by a camera.

---

## 1. How the screen-wall rooms make their effects

Nothing magic: it's normal video-game technology.

| Effect | How it's made |
|---|---|
| Real-looking asteroids | **3D rock models** with photo-based textures (rock scans), lit by a "sun" light so one side is bright and one is in shadow, slowly **rotating**. |
| Space background | High-resolution space photos/nebula images (NASA images are public domain), sometimes with slowly drifting star layers. |
| Explosions | **Pre-rendered explosion videos/sprite sheets** (fire, smoke, sparks) made in VFX software, played as animated images, plus **particle systems** for flying debris and embers. |
| "Glow" and punch | Post-processing: **bloom** (bright things glow), light flashes, small camera shake, motion blur. |
| Sound | Layered sound design: whoosh as rocks approach, heavy boom, debris, crowd-pleasing score sounds. |
| Engine | Usually **Unity** or **Unreal**, running on a PC with a good graphics card. |
| The "windows" look | That's just the physical wall of separate screens; the game draws one big picture across all of them. |

How they detect hits varies: sensors behind the screens, or infrared cameras/laser scanners in front of the wall.

---

## 2. The big technical point: visuals vs. detection

Today the camera detects the ball by looking for **motion**. Real-looking effects are **full of motion**
(rotating rocks, smoke, fire, debris). The current app handles this by keeping its own copy of the
picture and ignoring motion the projector caused, which works for simple drawings but will struggle
with heavy smoke and fire.

The clean solution, used by commercial interactive walls: **detect in a way the projected picture can't affect.**

| Option | How it works | Cost (approx.) | Result |
|---|---|---|---|
| **A. Infrared (IR) camera + IR light** (recommended next step) | An IR camera with an 850 nm filter only sees infrared. The projector's picture is (almost) invisible to it. An IR floodlight lights the players and balls. | IR USB camera $50–150 + IR floodlight $30–60 | Visuals can be anything, detection stays clean. Cheap. |
| **B. Laser scanner ("touch radar" / LiDAR)** | A sensor in the corner scans a thin laser sheet just in front of the wall and reports exactly where a ball crosses it. | $300–1,500+ | Pro-level accuracy, works in any light. Venue grade. |
| C. Keep the normal camera | Smarter software (current approach, improved). | $0 | OK for simple graphics; limits how wild the effects can be. |

**Recommendation:** go to **A (IR camera)** when you move to realistic effects. Plan **B** for the real venue.

---

## 3. Phased plan

### Phase 0 – Now (testing)
- Test the current Asteroid Attack with real throws; note what's seen/missed (white ring = seen but missed).
- Decide hardware for the next phases (questions at the bottom).

### Phase 1 – Realistic visuals in the browser (biggest visible jump)
Switch drawing from simple 2D shapes to a **3D engine in the browser (Three.js / WebGL)**. Still runs from the GitHub link.
- 3D asteroids: lumpy rock shapes with real rock textures (free CC0 textures from Poly Haven), lit by a sun, rotating, tumbling toward the players.
- Explosions: animated fire/smoke sprite sheets + particle debris + flash + bloom glow + small screen shake.
- Space background: real nebula/star photos (NASA, public domain).
- Optional "window frames" overlay to look like a screen wall, or the full clean wall (our advantage).
- Better sound effects (licensed or free CC0 sound packs).
- Detection: keep the current camera method, with a small low-res copy of the 3D picture for comparison.
- Hardware: a laptop with a decent graphics chip is enough; a mini PC with a GPU is better.

### Phase 2 – Infrared detection (makes the effects "free")
- Add support for an IR camera + IR floodlight. The app then ignores the projected picture completely.
- Same calibration flow (corners shown with the IR light / a printed marker or a one-time visible-camera step).
- Result: no more false hits from fire/smoke; more reliable hits.

### Phase 3 – More games and a real "session" experience
- More games (team battles, memory, target shooting, survival), difficulty levels, kids mode.
- Timed sessions, player/team names, leaderboard, attract mode (demo loop when idle).
- Operator screen: start/stop sessions, pick games, sound volume.

### Phase 4 – Venue grade
- Laser scanner (LiDAR) detection, brighter laser projector(s), multiple projectors blended for very wide walls.
- Optional move to Unity/Unreal for film-quality effects on a gaming PC.
- Booking/payment integration if needed.

---

## 4. Assets and rights
- Don't copy any other company's game graphics, videos or sounds. Use our own, free (CC0/public domain), or bought licenses.
- Good sources: Poly Haven (free rock textures, HDRIs), NASA image library (public domain space photos),
  Kenney.nl (free game assets), paid VFX packs for explosions (e.g. ActionVFX) if we want film quality.

---

## 5. Decisions needed before Phase 1
1. **Computer:** will the games run on the current laptop, or a dedicated PC/mini PC with a graphics card?
2. **Detection budget:** OK to buy an IR camera + IR light (~$100–200) for Phase 2?
3. **Look:** clean full wall, or "window frames" like a screen wall?
4. **Audience:** kids, adults, or both (affects speed and difficulty)?
