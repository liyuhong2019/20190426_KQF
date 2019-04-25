#import "ThreeSDK_Tentcent.h"



// 宏定义
// bugly
#define ThreeLib_TencentBugly_AppID @"1a0234edbf"
#define ThreeLib_TencentBugly_AppKey @"5456bdc6-3d97-49e5-8ee1-2e66be9cf5ff"


@interface ThreeSDK_Tentcent ()
<
BuglyDelegate
>
@end

@implementation ThreeSDK_Tentcent
// 单例对象
+ (ThreeSDK_Tentcent *)getInstance{
    static ThreeSDK_Tentcent *sharedInstance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

// 初始化的时候调用
- (id)init{
    if (self = [super init]) {
//        AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
//        self.appDelegate = appDelegate;
        NSLog(@"%s ,🍀 初始化 腾讯 SDK start 🍀",__func__);
        [self lyh_initThreeSDK_Tentcent_Bugly];
//        [self lyh_ThreeSDK_NEST_othersettings];
//        [self lyh_ThreeSDK_NEST_DataPersistence];
        NSLog(@"%s ,🍀 初始化 腾讯 SDK end 🍀",__func__);
        
    }
    return self;
}

#pragma mark - 0001、腾讯的bugly start
- (void)lyh_initThreeSDK_Tentcent_Bugly
{
    NSLog(@"%s , 注册 腾讯的Bugly start",__func__);
    [Bugly startWithAppId:ThreeLib_TencentBugly_AppID config:^{
        BuglyConfig *config = [[BuglyConfig alloc] init];
        config.blockMonitorEnable = YES;
        config.blockMonitorTimeout = 2;
        config.consolelogEnable = YES;
        config.delegate = self;
        return config;
    }()];
    NSLog(@"%s , 注册 腾讯的Bugly end",__func__);

}
#pragma mark 腾讯bugly代理 start

- (NSString *)attachmentForException:(NSException *)exception {
    NSLog(@"腾讯bugly发生异常");
    return @"Do you want to do...";
}

#pragma mark 腾讯bugly 自定义方法 start
/**
 故意演示闪退代码
 */
- (void)lyh_initThreeSDK_Tentcent_BuglyTestDebug
{
    NSLog(@"%s , 故意演示闪退代码",__func__);
    // 延迟1秒左右 制造错误
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@"%s , 延迟1.5发生错误",__func__);
        NSArray *array = @[@"l",@"y",@"h"];
        NSLog(@"array %@",array[5]);
    });
}

#pragma mark  0001、腾讯的bugly end

@end
