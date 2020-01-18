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

## Known issue

### memory leak

https://github.com/google/mediapipe/issues/387

## Links

[google/mediapipe](https://github.com/google/mediapipe)
