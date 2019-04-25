#import "AppDelegate.h"

// singleton
#import "AppProject.h"

// Controller
#import "AppTabBarViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // 1、项目的一些配置
    AppProject *appProject = [AppProject getInstance];
    [appProject lyh_initAppProject];
    // 第三方SDK配置
   
#warning 这一块代码到时候封装到appProject里面
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    AppTabBarViewController *tabBarVC = [[AppTabBarViewController alloc] init];
    self.window.rootViewController = tabBarVC;
    [self.window makeKeyAndVisible];
    // 第三方SDK配置

    
    
   
    return YES;
}

#pragma mark - App States (应用程序的状态)
- (void)applicationWillResignActive:(UIApplication *)application
{
    [[AppProject getInstance]appProject_applicationWillResignActive:application];
}
- (void)applicationDidEnterBackground:(UIApplication *)application {
    [[AppProject getInstance]appProject_applicationDidEnterBackground:application];
}
- (void)applicationWillEnterForeground:(UIApplication *)application {
    [[AppProject getInstance]appProject_applicationWillEnterForeground:application];
}
- (void)applicationDidBecomeActive:(UIApplication *)application {
    [[AppProject getInstance]appProject_applicationDidBecomeActive:application];
}
- (void)applicationWillTerminate:(UIApplication *)application {
    [[AppProject getInstance]appProject_applicationWillTerminate:application];
}
//当应用程序即将终止时调用，可以在applicationDidEnterBackground中保存数据
-(void)applicationSignificantTimeChange:(UIApplication *)application{
    [[AppProject getInstance]appProject_applicationSignificantTimeChange:application];
}
- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application{
    [[AppProject getInstance]appProject_applicationDidReceiveMemoryWarning:application];
}

#pragma mark 通知处理
//当一个运行着的应用程序收到一个远程的通知发送到此方法 7.0之前
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo{
    [[AppProject getInstance]appProject_application:application didReceiveRemoteNotification:userInfo];
}

//当一个运行着的应用程序收到一个远程的通知 发送此方法 7.0之后
- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler{
    [[AppProject getInstance]appProject_application:application didReceiveRemoteNotification:userInfo fetchCompletionHandler:completionHandler];
}

//当一个应用程序成功的注册一个推送服务（APS） 发送此方法
-(void) application :(UIApplication *) application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *) deviceToken{
    [[AppProject getInstance]appProject_application:application didRegisterForRemoteNotificationsWithDeviceToken:deviceToken];
}

//当 APS无法成功的完成向程序进程推送时 发送此方法
-(void) application :(UIApplication *) application didFailToRegisterForRemoteNotificationsWithError:(NSError *) error{
    [[AppProject getInstance]appProject_application:application didFailToRegisterForRemoteNotificationsWithError:error];
}

//当一个运行着的应用程序收到一个本地的通知 发送此方法
-(void) application :(UIApplication *) application didReceiveLocalNotification:(UILocalNotification *)notification{
    [[AppProject getInstance]appProject_application:application didReceiveLocalNotification:notification];
}

#pragma mark - 打开一个URL 资源
//// iOS9之后
//-(BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey, id> *)options
//{
//    return [[AppProject getInstance]appProject_application:app openURL:url options:options];
//}
//
//// iOS9之前
////请求委托打开一个 URL资源
//- (BOOL) application:(UIApplication *) application handleOpenURL:(NSURL *)url{
//    return [[AppProject getInstance]appProject_application:application handleOpenURL:url];
//}
//
////请求委托打开一个 URL资源
//- (BOOL) application:(UIApplication *) application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation{
//    return [[AppProject getInstance]appProject_application:application openURL:url sourceApplication:sourceApplication annotation:annotation];
//}


// 设置系统回调
// 支持所有iOS系统
- (BOOL)application:(UIApplication *)application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    //6.3的新的API调用，是为了兼容国外平台(例如:新版facebookSDK,VK等)的调用[如果用6.2的api调用会没有回调],对国内平台没有影响
    BOOL result = [[UMSocialManager defaultManager] handleOpenURL:url sourceApplication:sourceApplication annotation:annotation];
    if (!result) {
        // 其他如支付等SDK的回调
    }
    return result;
}

@end
