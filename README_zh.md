# iPhoneXHiddenHomeIndicator

[EN](https://github.com/ReverseScale/iPhoneXHiddenHomeIndicator) | [中文](https://github.com/ReverseScale/iPhoneXHiddenHomeIndicator/blob/master/README_zh.md)

使用官方API边缘保护来隐藏游戏或特殊应用中 Home 指示条。

翻译自《iPhoneX-Lock-Home-Indicator》（https://github.com/frogcjn/iPhoneX-Lock-Home-Indicator）


#### iPhone X 锁定 Home 指示器

这是演示如何使用边缘保护的官方API来锁定游戏和特殊应用的主页指示符的示例。

<1>弱化 Home 指示条演示及代码

![](http://ghexoblogimages.oss-cn-beijing.aliyuncs.com/18-11-14/18062453.jpg)

```Swift
    /*
     * 打开底部边缘的边缘保护显示。
     * 这将给一个更微妙的外观和指标，改变退出你的应用行为需要操作两次。
     */
    override func preferredScreenEdgesDeferringSystemGestures() -> UIRectEdge {
        return [.bottom, .top] // .bottom for protecting home indicator, .top for protecting control center
    }
```

<2>隐藏 Home 指示条演示及代码

![](http://ghexoblogimages.oss-cn-beijing.aliyuncs.com/18-11-14/44675031.jpg)

```Swift
    /*
     * 如果你想使用边缘保护锁定指示器,不使用指标自动隐藏。这两个不能一起工作。
     */
    override func prefersHomeIndicatorAutoHidden() -> Bool {
        return true
    }
```

#### 更新 iPhone X 的应用程序
链接：https://developer.apple.com/ios/update-apps-for-iphone-x/

iPhone X上的显示器使用屏幕边缘手势提供对主屏幕，应用程序切换器，通知中心和控制中心的访问。避免干扰这些手势。将控件移到安全区域并调整您的UI。在极少数情况下，您可能会考虑使用边缘保护，其中第一次刷卡会调用特定于应用程序的手势，而第二次刷卡会调用系统手势。

#### 为iPhone X设计
链接：https://developer.apple.com/videos/play/fall2017/801/

如前所述，人们将通过从显示屏的底部边缘向上滑动来访问应用程序切换器和主屏幕。在大多数情况下，轻扫手势往往出现在显示屏的中心，因此这种交互不太可能与您应用中的交互冲突。但是，如果您的应用或游戏鼓励人们沿着显示器的底部滑动，则可能需要打开显示器底部边缘的边缘保护。

这将使指标更加微妙的外观，并改变它的行为，因此需要两次刷卡才能退出您的应用程序。

第一次滑动或拖动抬起指示器并启用控制。第二次刷卡允许用户退出您的应用或游戏。由于边缘保护会导致不一致的用户体验，因此只能在绝对必要时才使用它。
与滑动不同，点击显示屏的底部边缘只会影响您的应用或游戏。

例如，轻击表格行单元格的结果是否相同，无论它是否位于指示器后面。
