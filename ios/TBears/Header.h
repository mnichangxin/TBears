#ifndef Header_h
#define Header_h

#pragma mark - 屏幕坐标、尺寸相关

// 判断是否iPhone
#define kIS_iPhoneX             UIApplication.sharedApplication.statusBarFrame.size.height > 20
// 屏幕高度
#define kScreenHeight           [[UIScreen mainScreen] bounds].size.height
// 屏幕宽度
#define kScreenWidth            [[UIScreen mainScreen] bounds].size.width
// 状态栏高度
#define kStatusBarHeigh         UIApplication.sharedApplication.statusBarFrame.size.height
// 顶部导航栏高度
#define kNavigationBarHeight    44.f
// 状态栏高度 + 顶部导航栏高度
#define kSafeAreaTopHeight      (UIApplication.sharedApplication.statusBarFrame.size.height + 44)
// 底部安全距离
#define kSafeAreaBottomHeight   (kIS_iPhoneX ? 34.f : 0.f)
// Tabbar高度
#define kTabbarHeight           (kIS_iPhoneX ? 85.f : 34.f)

#endif

