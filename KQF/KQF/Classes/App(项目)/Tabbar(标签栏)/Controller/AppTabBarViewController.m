#import "AppTabBarViewController.h"

//#import "WLTX_HomeViewController.h"                  // 主页
//#import "WLTX_SpecialLineQueryViewController.h"      // 专线查询
//#import "WLTX_PublishInformationViewController.h"    // 发布消息
//#import "WLTX_PersonalCenterViewController.h"        // 个人中心
//#import "LYHNavigationController.h"                  // 导航栏
//#import "LYHTabBar.h"                                // tabbar

@interface AppTabBarViewController ()

@end

@implementation AppTabBarViewController
#pragma mark - ♻️ 视图的生命周期 view life cycle start

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSLog(@"%s 重写父类的方法",__FUNCTION__);
    
    [self setupChildVc:[[KQF_HomeViewController alloc] initWithNibName:NSStringFromClass([KQF_HomeViewController class]) bundle:nil] title:@"首页" image:@"icon_shouye" selectedImage:@"icon_shouye_Selected" isHiddenNavgationBar:NO];
    [self setupChildVc:[[KQF_CameraViewController alloc] initWithNibName:NSStringFromClass([KQF_CameraViewController class]) bundle:nil] title:@"摄像" image:@"tabBar_find" selectedImage:@"tabBar_find_click" isHiddenNavgationBar:NO];
    [self setupChildVc:[[KQF_DataViewController alloc] initWithNibName:NSStringFromClass([KQF_DataViewController class]) bundle:nil] title:@"数据" image:@"tabBar_find" selectedImage:@"tabBar_find_click" isHiddenNavgationBar:NO];
    
    [self setupChildVc:[[KQF_MyViewController alloc] initWithNibName:NSStringFromClass([KQF_MyViewController class]) bundle:nil] title:@"我的" image:@"tabBar_find" selectedImage:@"tabBar_find_click" isHiddenNavgationBar:NO];
    
    [[UITabBar appearance] setBackgroundImage:[self imageWithColor:[UIColor whiteColor]]];
    //  设置tabbar
    [[UITabBar appearance] setShadowImage:[[UIImage alloc] init]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
#pragma mark ♻️ 视图的生命周期 view life cycle end
#pragma mark - TabBar Initialize start
- (void)setCustomtabbar
{
//    [super setCustomtabbar];
    LYHTabBar *tabbar = [[LYHTabBar alloc]init];
    [self setValue:tabbar forKeyPath:@"tabBar"];
    [tabbar.centerBtn addTarget:self action:@selector(centerBtnClick:) forControlEvents:UIControlEventTouchUpInside];
}
- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
//    [super tabBar:tabBar didSelectItem:item];
    NSLog(@"app 点击的item:%ld title:%@", item.tag, item.title);
}
- (void)centerBtnClick:(UIButton *)btn
{
//    [super centerBtnClick:btn];
//    NSLog(@"%s 重写父类的方法",__FUNCTION__);
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"你点击了订单按钮11" preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
    [self presentViewController:alert animated:YES completion:nil];

}
- (UIImage *)imageWithColor:(UIColor *)color{
//    [super imageWithColor:color];
//    NSLog(@"%s 重写父类的方法",__FUNCTION__);
    CGRect rect = CGRectMake(0, 0, 1, 1);
    // 开启上下文
    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
    [color setFill];
    UIRectFill(rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
    
    
}
- (void)setupChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage isHiddenNavgationBar:(BOOL)isHidden
{
//    [super setupChildVc:vc title:title image:image selectedImage:selectedImage isHiddenNavgationBar:isHidden];
//
//    NSLog(@"%s 重写父类的方法",__FUNCTION__);
    static NSInteger index = 0;
    vc.navigationItem.title = title;
    vc.tabBarItem.title = title;
    vc.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    vc.tabBarItem.tag = index;
    index++;
    LYHNavigationController *nav = [[LYHNavigationController alloc] initWithRootViewController:vc];
    nav.navigationBar.translucent = NO; // 导航栏会导致加载的控制器视图偏移往上64
    
    if (isHidden) {
        nav.navigationBar.hidden = YES;
    }
    
    [self addChildViewController:nav];
    
}



// 支持设备自动旋转
- (BOOL)shouldAutorotate
{
    [super shouldAutorotate];
    
    return NO;
}

+ (void)initialize
{
    [super initialize];
    NSLog(@"%s 重写父类的方法",__FUNCTION__);
    //设置未选中的TabBarItem的字体颜色、大小
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
    //设置选中了的TabBarItem的字体颜色、大小
    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
    selectedAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    selectedAttrs[NSForegroundColorAttributeName] = BaseColor;
    
    UITabBarItem *item = [UITabBarItem appearance];
    
    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
}

#pragma mark  TabBar Initialize end
@end
