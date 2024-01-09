# demo_flutter

A new iOS & Flutter Hybrid demo project.

## Getting Started

* demo_ios & demo_flutter is placed in the same level directory.
* flutter doctor

  ```
  flutter doctor
  Doctor summary (to see all details, run flutter doctor -v):
  [✓] Flutter (Channel stable, 3.3.5, on macOS 13.5.1 22G90 darwin-arm (Rosetta))
  [✓] Android toolchain - develop for Android devices (Android SDK version 33.0.2)
  [✓] Xcode - develop for iOS and macOS (Xcode 14.3.1)
  [✓] Chrome - develop for the web
  [✓] Android Studio (version 2022.1)
  [✓] VS Code (version 1.85.1)
  [✓] Connected device (3 available)
  [✓] HTTP Host Availability
  ```
* demo_flutter run

  ```
  cd demo_flutter
  flutter pub get
  ```
* demo_ios run

  ```
  cd demo_ios
  pod install
  ```

## Feature

### Platform View

* Screen Recording

<video width="320" height="240" controls>
  <source src="./screen_recording/platform-view.mov" type="video/mp4">
</video>

* Description

  Once multiple Engines in an Engine group use the same Platform view component, a crash occurs when it is removed from the screen.

  Flutter engine error

  ```
  [VERBOSE-3:shared_thread_merger.cc(59)] Check failed: lease_term_ref > 0. lease_term should always be positive when merged, lease_term=0
  ```

### Text LineThrough

* Screenshot

<img width="160" src="./screen_recording/Text LineThrough.png">
</img>

* Description
  If the text content is all in Chinese or English, Text line through is displayed normally.

  If the copy in Text includes Chinese and English, the Text line through is not on the baseline.

  Custom font Text line through not centered.

### Animation

* Screen Recording

<video width="320" height="240" controls>
  <source src="./screen_recording/animation.mov" type="video/mp4">
</video>

* Description
  If the CPU is constantly high when there is a continuous animation on the screen. Multiple continuous animations will cause the phone to heat up

### Gif

* Screen Recording

<video width="320" height="240" controls>
  <source src="./screen_recording/gif.mov" type="video/mp4">
</video>

* Description
  Like animation, I think this is a problem caused by continuous rendering.

### Scroll to index

* Screen Recording

<video width="320" height="240" controls>
  <source src="./screen_recording/scroll-to-index.mov" type="video/mp4">
</video>

* Description

  I introduced the AnchorScrollController to handle anchors.
  It is sometimes accurate, but occasionally there are problems with the offset calculation, the probability of which depends on the value of scrollSpeed, and often occurs if scrollSpeed >= 15.
