# HandTracker

![](https://github.com/noppefoxwolf/HandTracker/blob/master/.github/sample.gif)

## Carthage

```
binary "https://raw.githubusercontent.com/noppefoxwolf/HandTracker/master/HandTracker.json"
```

## Usage


import HandTracker in bridgingHeader

```objc
#import <HandTracker/HandTracker.h>
```

setup handtracker

```swift
let tracker: HandTracker = HandTracker()!

tracker.startGraph()
tracker.delegate = self
```

handle landmark and rendered example pixelBuffer

```
func handTracker(_ handTracker: HandTracker!, didOutputLandmarks landmarks: [Landmark]!) {
    print(landmarks.count)
}
    
func handTracker(_ handTracker: HandTracker!, didOutputPixelBuffer pixelBuffer: CVPixelBuffer!) {
    
}
```

## TODO

- [x] bitcode
- [ ] x86_64 / i386 

## Donation

Bitcoin `3JicHZiyjHW7bjB2UZ52T2rCDSssrZET4A`

Etherium `0xdBF5d40bE41722ab97250A257C981A23719086F7`

MONA `MLyRMECmWNNAmSVhoq2B5pm4aWBofDT5Cq`

## Links

[google/mediapipe](https://github.com/google/mediapipe)
