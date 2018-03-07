//
//  ViewController.swift
//  iPhoneXLockHomeIndicator
//
//  Created by Cao, Jiannan on 2017/11/14.
//  Copyright © 2017年 Cao, Jiannan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /*
     * Turn on edge protection for the bottom edge of the display.
     * 打开底部边缘的边缘保护显示。
     * This will give the indicator a more subtle appearance and change it's behavior so that two swipes are required to exit your app.
     * 这将给一个更微妙的外观和指标，改变退出你的应用行为需要操作两次。
     */
    
//    override func preferredScreenEdgesDeferringSystemGestures() -> UIRectEdge {
//        return [.bottom, .top] // .bottom for protecting home indicator, .top for protecting control center
//    }

    /*
     * If you want to use edge protection to lock the home indicator, do not use home indicator auto-hiding.These two do not work together.
     * 如果你想使用边缘保护锁定指示器,使用指标自动隐藏。这两个不能一起工作。
     */
    
    override func prefersHomeIndicatorAutoHidden() -> Bool {
        return true
    }
    
}

/*
 Update your apps for iPhone X.
 更新你的 iPhone X 应用程序。
 https://developer.apple.com/ios/update-apps-for-iphone-x/
 
 Screen Edge Gestures:
 The display on iPhone X uses screen edge gestures to provide access to Home screen, app switcher, Notification Center, and Control Center. Avoid interfering with these gestures. Move controls into the safe area and adjust your UI. In rare cases, you may consider using edge protect, in which the first swipe invokes the app-specific gesture and a second-swipe invokes the system gesture.
 
 屏幕边缘的手势:
 使用 iPhone X 屏幕上显示边缘手势来提供主屏幕,应用切换器,通知中心和控制中心。避免干扰这些手势。控制进入安全区域,调整你的UI。在极少数情况下,你可能会考虑使用边缘保护,第一次刷second-swipe调用系统调用app-specific手势和姿态。
 
 
 
 Designing for iPhone X.
 为 iPhone X 设计。
 https://developer.apple.com/videos/play/fall2017/801/
 
 Transcript:
 As mentioned earlier, people will access the app switcher and Home screen by swiping upward from the bottom edge of the display. In most cases, swipe gestures tend to occur in the center of the display, so this interaction is unlikely to conflict with interactions in your app. However, if your app or game encourages people to swipe along the very bottom of the display, you may want to turn on edge protection for the bottom edge of the display.
 This will give the indicator a more subtle appearance and change it's behavior so that two swipes are required to exit your app.
 The first swipe, or drag, lifts the indicator and enables the control. While swiping a second time allows people to exit your app or game. Because edge protection leads to an inconsistent user experience, it should be used only when it's absolutely necessary.
 Unlike swipes, tapping the bottom edge of the display will only affect your app or game.
 For example, tapping a table row cell has the same result whether or not it's behind the indicator.
 
 记录:
 正如前面提到的,人们会访问应用程序切换器和主屏幕刷从底部向上显示的边缘。在大多数情况下,滑动手势往往发生在显示器的中心,所以这种交互不太可能与应用程序交互的冲突。然而,如果你的应用程序或游戏鼓励人们刷卡的最底部显示,你可能想要打开底部边缘的边缘保护显示。
 这将给指示一个更微妙的外观和改变它的行为这两个刷需要退出你的应用。
 第一次刷卡,或拖动,电梯,使控制指标。而刷第二次允许人们退出你的应用或游戏。因为边缘保护导致不一致的用户体验,它应该使用只有当它是绝对必要的。
 与啤酒不同,利用底部的边缘显示只会影响你的应用或游戏。
 例如,开发一个表行细胞有相同的结果是否背后的指标。
 */
