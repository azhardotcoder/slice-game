# slice-game

A recreation of the Slice Rewards "Fire" Meteor Slicing Mini-Game extracted from the Slice App.

## Features
- **Authentic Visuals & UI**: Pixel-perfect layout matching the original Slice rewards game frames.
- **Meteor Slicing Mechanics**: Dynamic white katana blade trail, realistic particle flares, bubble burst FX, and halved meteor physics.
- **Hazard System**: Animated flaming skull bombs (`Bomb01`) and planet damage/crack states (`Planet04_Grey`).
- **Complete Audio & Haptics**: Full background music, slicing SFX, bonus slices, planet hit audio, win/lose tracks, and Android haptic feedback.
- **Standalone Android APK**: Self-contained webview-based Android game ready to install on Android 7.0+ (API 24 to 29+).

## Project Structure
- `SliceFireGame.apk`: Pre-built, signed, and ready-to-install Android APK.
- `slice_game_apk/`: Source directory containing AndroidManifest, assets, smali code, resources, and apktool configuration.
  - `assets/game/index.html`: Core game logic, canvas renderer, physics, particle system, and sound controller.
  - `assets/game/images/`: Texture atlases, Spine sprite sheets, SVG HUD elements.
  - `assets/game/audio/`: Original game audio files (MP3).
- `slice_release.keystore`: Keystore used for signing the release APK.

## How to Build

### Prerequisites
- Java 21+ (`openjdk@21`)
- `apktool`
- Android `adb` (for installation)

### Build & Sign
```bash
# Build APK
apktool b slice_game_apk -o SliceFireGame.apk

# Sign APK
jarsigner -sigalg SHA256withRSA -digestalg SHA-256 \
  -keystore slice_release.keystore \
  -storepass slice123 -keypass slice123 \
  SliceFireGame.apk slicegame
```

### Install via ADB
```bash
adb install -r SliceFireGame.apk
adb shell am start -n com.slice.rewards.game/.MainActivity
```
