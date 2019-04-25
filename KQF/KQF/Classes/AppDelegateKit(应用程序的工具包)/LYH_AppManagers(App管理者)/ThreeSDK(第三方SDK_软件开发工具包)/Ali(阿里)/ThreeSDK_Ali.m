#import "ThreeSDK_Ali.h"

// 宏定义
//#define UMAppkey @"5c84b0d061f564bf36000711"        // 我的应用 LYH_Self_Global
//#define UMDemoWeChatAppkey @"wxdc1e388c3822c80b"
//#define UMDemoWeChatAppSecret @"3baf1193c85774b3fd9d18447d76cab0"

// 公司app 青之蓝漫画测试 修改之后 还需要在info.plist 修改 URL type 的 wxappkey
#define UMAppkey @"5c49aff3f1f5561476000197"
#define UMDemoWeChatAppkey @"wxb932a84da14f3a96"
#define UMDemoWeChatAppSecret @"0791e21742d6dd9d8e2bbe1e0d21c6fd"

// 类扩展
@interface ThreeSDK_Ali ()
@property (strong,nonatomic) AppDelegate *appDelegate;
@end

@implementation ThreeSDK_Ali

// 单例对象
+ (ThreeSDK_Ali *)getInstance{
    static ThreeSDK_Ali *sharedInstance;
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
        NSLog(@"%s ,🍀 初始化 阿里 SDK start 🍀",__func__);
        //        NSLog(@"%s , 初始化h5",__func__);
        NSLog(@"%s ,🍀 初始化 阿里 SDK end 🍀",__func__);
        
        
        
    }
    return self;
}


#pragma mark - 友盟sdk start
- (void)lyh_initTThreeSDK_Ali_UM
{
    NSLog(@"%s 初始化友盟SDK start",__func__);
    // 初始化 友盟sdk
    [UMCommonLogManager setUpUMCommonLogManager]; // 开启日志输出 用来检测那里配置出现问题
    [UMConfigure setLogEnabled:YES]; // 设置是否在console输出sdk的log信息.默认是No
    [UMConfigure initWithAppkey:UMAppkey channel:@"App Store"];
    
    // 统计
    // 分享、登录
    [self lyh_initFunction_share];
    // 推送
    NSLog(@"%s 初始化友盟SDK end",__func__);
}

/**
 统计
 */
- (void)lyh_initFunction_statistical
{
    NSLog(@"%s,初始化友盟统计",__func__);
}


/**
 分享登录
 配置参考 https://developer.umeng.com/docs/66632/detail/66825
 
 steps1、配置白名单
 steps2、设置 URL type 用户授权、回到应用
 
 */
- (void)lyh_initFunction_share
{
    NSLog(@"%s,初始化友盟分享登录",__func__);
    // UMConfigure 通用设置，请参考SDKs集成做统一初始化。
    // 以下仅列出U-Share初始化部分
    // U-Share 平台设置
    [self configUSharePlatforms];
    [self confitUShareSettings];
    
}




#pragma mark - 配置各个平台的信息


- (void)confitUShareSettings
{
    /*
     * 打开图片水印
     */
    //[UMSocialGlobal shareInstance].isUsingWaterMark = YES;
    
    /*
     * 关闭强制验证https，可允许http图片分享，但需要在info.plist设置安全域名
     <key>NSAppTransportSecurity</key>
     <dict>
     <key>NSAllowsArbitraryLoads</key>
     <true/>
     </dict>
     */
    //[UMSocialGlobal shareInstance].isUsingHttpsWhenShareContent = NO;
    
}

- (void)configUSharePlatforms
{
    /* 设置微信的appKey和appSecret */
    [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_WechatSession appKey:UMDemoWeChatAppkey appSecret:UMDemoWeChatAppSecret redirectURL:@"http://mobile.umeng.com/social"];
    //    [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_WechatSession appKey:@"wxb932a84da14f3a96" appSecret:@"0791e21742d6dd9d8e2bbe1e0d21c6fd" redirectURL:@"http://mobile.umeng.com/social"];
    
    /*
     * 移除相应平台的分享，如微信收藏
     */
    [[UMSocialManager defaultManager] removePlatformProviderWithPlatformTypes:@[@(UMSocialPlatformType_WechatFavorite)]];
    
    //    /* 设置分享到QQ互联的appID
    //     * U-Share SDK为了兼容大部分平台命名，统一用appKey和appSecret进行参数设置，而QQ平台仅需将appID作为U-Share的appKey参数传进即可。
    //     */
    //    [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_QQ appKey:@"1105821097"/*设置QQ平台的appID*/  appSecret:nil redirectURL:@"http://mobile.umeng.com/social"];
    //
    //    /* 设置新浪的appKey和appSecret */
    //    [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_Sina appKey:@"3921700954"  appSecret:@"04b48b094faeb16683c32669824ebdad" redirectURL:@"https://sns.whalecloud.com/sina2/callback"];
    //
    //    /* 钉钉的appKey */
    //    [[UMSocialManager defaultManager] setPlaform: UMSocialPlatformType_DingDing appKey:@"dingoalmlnohc0wggfedpk" appSecret:nil redirectURL:nil];
    //
    //    /* 支付宝的appKey */
    //    [[UMSocialManager defaultManager] setPlaform: UMSocialPlatformType_AlipaySession appKey:@"2015111700822536" appSecret:nil redirectURL:@"http://mobile.umeng.com/social"];
    //
    //
    //    /* 设置易信的appKey */
    //    [[UMSocialManager defaultManager] setPlaform: UMSocialPlatformType_YixinSession appKey:@"yx35664bdff4db42c2b7be1e29390c1a06" appSecret:nil redirectURL:@"http://mobile.umeng.com/social"];
    //
    //    /* 设置点点虫（原来往）的appKey和appSecret */
    //    [[UMSocialManager defaultManager] setPlaform: UMSocialPlatformType_LaiWangSession appKey:@"8112117817424282305" appSecret:@"9996ed5039e641658de7b83345fee6c9" redirectURL:@"http://mobile.umeng.com/social"];
    //
    //    /* 设置领英的appKey和appSecret */
    //    [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_Linkedin appKey:@"81t5eiem37d2sc"  appSecret:@"7dgUXPLH8kA8WHMV" redirectURL:@"https://api.linkedin.com/v1/people"];
    //
    //    /* 设置Twitter的appKey和appSecret */
    //    [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_Twitter appKey:@"fB5tvRpna1CKK97xZUslbxiet"  appSecret:@"YcbSvseLIwZ4hZg9YmgJPP5uWzd4zr6BpBKGZhf07zzh3oj62K" redirectURL:nil];
    //
    //    /* 设置Facebook的appKey和UrlString */
    //    [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_Facebook appKey:@"506027402887373"  appSecret:nil redirectURL:@"http://www.umeng.com/social"];
    //
    //    /* 设置Pinterest的appKey */
    //    [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_Pinterest appKey:@"4864546872699668063"  appSecret:nil redirectURL:nil];
    //
    //    /* dropbox的appKey */
    //    [[UMSocialManager defaultManager] setPlaform: UMSocialPlatformType_DropBox appKey:@"k4pn9gdwygpy4av" appSecret:@"td28zkbyb9p49xu" redirectURL:@"https://mobile.umeng.com/social"];
    //
    //    /* vk的appkey */
    //    [[UMSocialManager defaultManager]  setPlaform:UMSocialPlatformType_VKontakte appKey:@"5786123" appSecret:nil redirectURL:nil];
    
}

#pragma mark  友盟集成第三方的sdk、申请平台网站
/**
 微信开发者平台申请 https://open.weixin.qq.com/cgi-bin/index?t=home/index&lang=zh_CN
 */


#pragma mark  友盟sdk end
@end
