#import "AppProject.h"


// 类扩展
@interface AppProject ()
@property (strong,nonatomic) AppDelegate *appDelegate;
@end
@implementation AppProject


// 单例对象
+ (AppProject *)getInstance{
    static AppProject *sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

// 初始化的时候调用
- (id)init{
    if (self = [super init]) {
        AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
        self.appDelegate = appDelegate;
//        [self lyh_initAppProject];
        
//        NSLog(@"%s , 初始化h5",__func__);
//        [self lyh_initWithAdd_H5App2Window];
//        [self lyh_initWithH5_PDRCore];
//        NSLog(@"%s ,初始化h5,如果出现黑屏需要在AppDelegate需要设置\n [PDRCore initEngineWihtOptions:launchOptions withRunMode:PDRCoreRunModeAppClient];",__func__);
        
    }
    return self;
}

- (void)lyh_initAppProject
{
    NSLog(@"%s,初始化app项目,配置第三方sdk",__func__);
    // bugly
    [[ThreeSDK_Tentcent getInstance]lyh_initThreeSDK_Tentcent_Bugly];
    
    [[ThreeSDK_Ali getInstance]lyh_initTThreeSDK_Ali_UM];
    
    
    // 第三方开源框架初始化
    [self lyh_openinitThreeFoundation_IQKeyboardManager];
    
    
}
- (void)lyh_openinitThreeFoundation_IQKeyboardManager
{
    // 关闭自动键盘功能
    // [IQKeyboardManager sharedManager].enable = NO;
    
    // 开启自动键盘功能 (默认开启)
    // [IQKeyboardManager sharedManager].enable = YES;
    
    //  键盘弹出时，点击背景，键盘收回 (默认没有回收)
    [IQKeyboardManager sharedManager].shouldResignOnTouchOutside = YES;
    
    // 隐藏键盘上面的toolBar,默认是开启的
    // [IQKeyboardManager sharedManager].enableAutoToolbar = NO;
    
   
}

#pragma 比较常用

/**
 1、启动app
 操作:1.进入app、2.app处于后台情况,点击app会调用
 程序重新激活
 */
- (void)appProject_applicationDidBecomeActive:(UIApplication *)application
{
    NSLog(@"%s ---  程序重新激活 状态",__FUNCTION__);
}
/**
 程序进入后台
 */
- (void)appProject_applicationDidEnterBackground:(UIApplication *)application
{
    NSLog(@"%s --- 程序进入后台 状态",__FUNCTION__);
}
/**
 程序进入前台
 */
- (void)appProject_applicationWillEnterForeground:(UIApplication *)application
{
    NSLog(@"%s ---  程序进入前台 状态",__FUNCTION__);
}
/**
 程序被杀死
 */
- (void)appProject_applicationSignificantTimeChange:(UIApplication *)application
{
    /**当应用程序即将终止时调用，可以保存数据 */
    NSLog(@"%s ---  当应用程序即将终止时调用，可以保存数据 ",__FUNCTION__);
}

#pragma 比较少用
/**
 2、挂起
 操作:
    1、手机处于app活跃状态.通过按home进入后台,会调用
    2、锁屏会调用
 
 当有电话进来或者锁屏，这时你的应用程会挂起，在这时，UIApplicationDelegate委托会收到通知，调用 applicationWillResignActive 方法，你可以重写这个方法，做挂起前的工作，比如关闭网络，保存数据。
 */
- (void)appProject_applicationWillResignActive:(UIApplication *)application
{
    NSLog(@"%s --- 挂起状态 --- 当有电话进来或者锁屏，这时你的应用程会挂起，在这时，UIApplicationDelegate委托会收到通知，调用 applicationWillResignActive 方法，你可以重写这个方法，做挂起前的工作，比如关闭网络，保存数据。",__FUNCTION__);
}

- (void)appProject_applicationWillTerminate:(UIApplication *)application
{
    NSLog(@"%s ---  程序意外暂行 状态",__FUNCTION__);
    UIDevice *device = [UIDevice currentDevice];
    NSLog(@"device name %@",[device name]);
    NSLog(@"device model %@",[device model]);
    NSLog(@"device localizedModel %@",[device localizedModel]);
    NSLog(@"device systemName %@",[device systemName]);
    NSLog(@"device systemVersion %@",[device systemVersion]);
    NSLog(@"device orientation %ld",(long)[device orientation]);
    NSLog(@"device orientation %@",[device identifierForVendor]);

}



/**当内存低告警时 */
- (void)appProject_applicationDidReceiveMemoryWarning:(UIApplication *)application
{
    NSLog(@"%s --- 当内存低告警时 ",__FUNCTION__);

}


#pragma mark - (远程、本地)通知操作 (获取token、注册、注册失败)
#pragma mark 通知操作
//当一个运行着的应用程序收到一个远程的通知发送到此方法 7.0之前
- (void)appProject_application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo
{
    NSLog(@"%s ---  当一个运行着的应用程序收到一个远程的通知发送到此方法 7.0之前 ",__FUNCTION__);
}

//当一个运行着的应用程序收到一个远程的通知 发送此方法 7.0之后
- (void)appProject_application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler
{
    NSLog(@"%s ---  当一个运行着的应用程序收到一个远程的通知 发送此方法 7.0之后 ",__FUNCTION__);

}

//当一个应用程序成功的注册一个推送服务（APS） 发送此方法
-(void)appProject_application :(UIApplication *) application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *) deviceToken
{
    NSLog(@"%s ---  当一个应用程序成功的注册一个推送服务（APS） 发送此方法 ",__FUNCTION__);

}

//当 APS无法成功的完成向程序进程推送时 发送此方法
-(void)appProject_application :(UIApplication *) application didFailToRegisterForRemoteNotificationsWithError:(NSError *) error
{
    NSLog(@"%s ---  当 APS无法成功的完成向程序进程推送时 发送此方法 ",__FUNCTION__);
}
#pragma 本地通知操作
//当一个运行着的应用程序收到一个本地的通知 发送此方法
-(void)appProject_application :(UIApplication *) application didReceiveLocalNotification:(UILocalNotification *)notification
{
    NSLog(@"%s ---  当一个运行着的应用程序收到一个本地的通知 发送此方法 ",__FUNCTION__);
}

#pragma mark 打开URL (打开第三方应用)
-(BOOL)appProject_application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey, id> *)options
{
    NSLog(@"%s ---  iOS之后 请求委托打开一个 URL资源 ",__FUNCTION__);
    NSLog(@"url %@  ",url);
    NSLog(@"options %@  ",options);
    return YES;
}


//请求委托打开一个 URL资源
- (BOOL)appProject_application:(UIApplication *) application handleOpenURL:(NSURL *)url
{
    NSLog(@"%s ---  请求委托打开一个 URL资源__1 ",__FUNCTION__);
    NSLog(@"url %@  ",url);
    return YES;
}

//请求委托打开一个 URL资源
- (BOOL)appProject_application:(UIApplication *) application openURL:(NSURL *)url sourceApplication:(NSString *)sourceApplication annotation:(id)annotation
{
    NSLog(@"%s ---  请求委托打开一个 URL资源__2 ",__FUNCTION__);
    NSLog(@"url %@  ",url);
    NSLog(@"sourceApplication %@  ",sourceApplication);
    return YES;
}

@end
