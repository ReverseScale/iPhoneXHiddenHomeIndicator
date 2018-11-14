# iPhoneXHiddenHomeIndicator


[EN](https://github.com/ReverseScale/iPhoneXHiddenHomeIndicator) | [中文](https://github.com/ReverseScale/iPhoneXHiddenHomeIndicator/blob/master/README_zh.md)

Use official API Edge Protection to hide the Home bar in games or special applications.

Translated from "iPhoneX-Lock-Home-Indicator" (https://github.com/frogcjn/iPhoneX-Lock-Home-Indicator)

#### iPhone X Lock Home Indicator

Use official API Edge Protection to hide the Home bar in games or special applications.

<1> Weakened Home Bar Demo and Code

![](http://ghexoblogimages.oss-cn-beijing.aliyuncs.com/18-11-14/98385561.jpg)

```Swift
    /*
     * Turn on edge protection for the bottom edge of the display.
     * This will give the indicator a more subtle appearance and change it's behavior so that two swipes are required to exit your app.
     */
    override func preferredScreenEdgesDeferringSystemGestures() -> UIRectEdge {
        return [.bottom, .top] // .bottom for protecting home indicator, .top for protecting control center
    }
```

<2> Hide Home Bar Presentation and Code

![](http://ghexoblogimages.oss-cn-beijing.aliyuncs.com/18-11-14/44675031.jpg)

```Swift
    /*
     * If you want to use edge protection to lock the home indicator, do not use home indicator auto-hiding.These two do not work together.
     */
    override func prefersHomeIndicatorAutoHidden() -> Bool {
        return true
    }
```

#### IPhone X update application 
Url：https://developer.apple.com/ios/update-apps-for-iphone-x/

Displays on iPhone X use screen edge gestures to provide access to the home screen, application switchers, notification centers, and control centers. Avoid interference with these gestures. Move the control to a safe area and adjust your UI. In rare cases, you might consider using edge protection where the first swipe calls an application-specific gesture and the second swipe calls a system gesture.

#### Design for iPhone X 
Url ：https://developer.apple.com/videos/play/fall2017/801/

As mentioned earlier, people will access the application switcher and home screen by swiping up from the bottom edge of the display. In most cases, swipe gestures often appear in the center of the display, so this interaction is less likely to conflict with your application's interaction. However, if your app or game encourages people to slide along the bottom of the monitor, you may need to turn on edge protection at the bottom edge of the monitor.

This will make the indicator look more subtle and change its behavior, so it takes two swipe cards to quit your application.

Swipe or drag for the first time to raise the indicator and enable controls. The second credit card allows users to exit your application or game. Because edge protection can lead to an inconsistent user experience, use it only when absolutely necessary.
Unlike sliding, clicking the bottom edge of the display will only affect your app or game.

For example, tapping on a cell in a table row will result in the same whether it is behind a pointer or not.
