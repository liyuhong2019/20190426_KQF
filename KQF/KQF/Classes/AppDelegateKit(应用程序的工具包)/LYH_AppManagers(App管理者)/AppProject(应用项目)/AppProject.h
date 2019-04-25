// 项目初始化的单例
#import <Foundation/Foundation.h>

@interface AppProject : NSObject
+ (AppProject *)getInstance;
- (void)lyh_initAppProject;


/**
 AppDelegate代理方法
 https://www.jianshu.com/p/d38ed7aaa2d3
 */
#pragma mark home键操作、突然app挂掉操作
/** 程序挂起 */
- (void)appProject_applicationWillResignActive:(UIApplication *)application;
/**程序进入后台 */
- (void)appProject_applicationDidEnterBackground:(UIApplication *)application;
/** 程序进入前台 */
- (void)appProject_applicationWillEnterForeground:(UIApplication *)application;
/** 程序重新激活 */
- (void)appProject_applicationDidBecomeActive:(UIApplication *)application;
/**程序意外暂行 */
- (void)appProject_applicationWillTerminate:(UIApplication *)application;
/**当应用程序即将终止时调用，可以保存数据 */
- (void)appProject_applicationSignificantTimeChange:(UIApplication *)application;
/**当内存低告警时 */
- (void)appProject_applicationDidReceiveMemoryWarning:(UIApplication *)application;


#pragma mark 通知操作
/**
 当一个运行着的应用程序收到一个远程的通知发送到此方法 7.0之前
 */
- (void)appProject_application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo;

/**
 当一个运行着的应用程序收到一个远程的通知 发送此方法 7.0之后
 */
- (void)appProject_application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler;

/**
 当一个应用程序成功的注册一个推送服务（APS） 发送此方法
  */
-(void)appProject_application :(UIApplication *) application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *) deviceToken;

/**
 当 APS无法成功的完成向程序进程推送时 发送此方法
 */
-(void)appProject_application :(UIApplication *) application didFailToRegisterForRemoteNotificationsWithError:(NSError *) error;

/**
 当一个运行着的应用程序收到一个本地的通知 发送此方法
 */
-(void)appProject_application :(UIApplication *) application didReceiveLocalNotification:(UILocalNotification *)notification;

#pragma mark 打开URL (打开第三方应用)
/**
 iOS9以上
 请求委托打开一个 URL资源
 */
-(BOOL)appProject_application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey, id> *)options;
// 下面两个方法 已经在iOS9弃用了
/**
请求委托打开一个 URL资源
 */
- (BOOL)appProject_application:(UIApplication *) application handleOpenURL:(NSURL *)url;

/**
 请求委托打开一个 URL资源
*/
- (BOOL)appProject_application:(UIApplication *) application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation;
@end
