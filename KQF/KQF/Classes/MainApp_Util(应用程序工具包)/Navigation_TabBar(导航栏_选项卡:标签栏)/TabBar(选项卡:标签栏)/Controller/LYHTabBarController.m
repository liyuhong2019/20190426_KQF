#import "LYHTabBarController.h"

@interface LYHTabBarController ()

@end

@implementation LYHTabBarController

#pragma mark - ♻️ 视图的生命周期 view life cycle start
/*
 4-1、第一个执行的方法，加载UI：- (void)loadView{ }
 4-2、第二个执行的方法，加载UI成功后调用：- (void)viewDidLoad{ }
 4-3、第三个执行方法，UI即将显示时：- (void)viewWillAppear:(BOOL)animated{ }
 4-4、第四个执行方法，UI已经显示时：- (void)viewDidAppear:(BOOL)animated{ }
 4-5、第五个执行方法，UI即将消失时：- (void)viewWillDisappear:(BOOL)animated{ }
 4-6、第六个执行方法，UI已经消失时：- (void)viewDidDisappear:(BOOL)animated{ }
 4-7、最后执行方法，即视图控制器注销方法：- (void)dealloc { }
 4-8、该方法在接收到内存警告时会调用，且系统会自动处理内存释放：- (void)didReceiveMemoryWarning { }
 */

- (void)viewDidLoad {
    [super viewDidLoad];
//    NSLog(@"%s,第二个执行的方法，加载UI成功后调用：- (void)viewDidLoad{ } ",__FUNCTION__);
    // 做加载事情
//    self.view.backgroundColor = [UIColor yellowColor];
    // 这个是通过代码创建 alloc init
//    [self setupChildVc:[[Test1_ViewController alloc] initWithNibName:NSStringFromClass([Test1_ViewController class]) bundle:nil] title:@"首页" image:@"tabBar_home" selectedImage:@"tabBar_home_click" isHiddenNavgationBar:NO];
    
    // 这个是通过代码加载 xib
//    [self setupChildVc:[[Test1_ViewController alloc] initWithNibName:NSStringFromClass([Test1_ViewController class]) bundle:nil] title:@"首页" image:@"tabBar_home" selectedImage:@"tabBar_home_click" isHiddenNavgationBar:NO];

#pragma mark loadview start
//    [self setupChildVc:[[Test1_ViewController alloc] initWithNibName:NSStringFromClass([Test1_ViewController class]) bundle:nil] title:@"首页" image:@"tabBar_home" selectedImage:@"tabBar_home_click" isHiddenNavgationBar:NO];// 这个是加载的是xib
//    [self setupChildVc:[[Test2_ViewController alloc] initWithNibName:NSStringFromClass([Test2_ViewController class]) bundle:nil] title:@"订单" image:@"tabBar_find" selectedImage:@"tabBar_find_click" isHiddenNavgationBar:NO];
//    [self setupChildVc:[[Test3_ViewController alloc] initWithNibName:NSStringFromClass([Test3_ViewController class]) bundle:nil] title:@"订单" image:@"tabBar_find" selectedImage:@"tabBar_find_click" isHiddenNavgationBar:NO];
//
//    [self setupChildVc:[[Test4_ViewController alloc] initWithNibName:NSStringFromClass([Test4_ViewController class]) bundle:nil] title:@"资讯" image:@"tabBar_find" selectedImage:@"tabBar_find_click" isHiddenNavgationBar:NO];
//    [self setupChildVc:[[Test5_ViewController alloc] initWithNibName:NSStringFromClass([Test5_ViewController class]) bundle:nil] title:@"我的" image:@"tabBar_me" selectedImage:@"tabBar_me_click" isHiddenNavgationBar:NO];
//
//    [[UITabBar appearance] setBackgroundImage:[self imageWithColor:[UIColor whiteColor]]];
//    //  设置tabbar
//    [[UITabBar appearance] setShadowImage:[[UIImage alloc] init]];
//    [self setCustomtabbar];
}




- (void)loadView
{
    [super loadView];
//    NSLog(@"%s,第一个执行的方法，加载UI：- (void)loadView{ } ",__FUNCTION__);
    
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
//    NSLog(@"%s,第三个执行方法，UI即将显示时：- (void)viewWillAppear:(BOOL)animated{ } ",__FUNCTION__);
}
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
//    NSLog(@"%s,第四个执行方法，UI已经显示时：- (void)viewDidAppear:(BOOL)animated{ } ",__FUNCTION__);
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
//    NSLog(@"%s,第五个执行方法，UI即将消失时：- (void)viewWillDisappear:(BOOL)animated{ } ",__FUNCTION__);
}
- (void)viewDidDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
//    NSLog(@"%s,第六个执行方法，UI已经消失时：- (void)viewDidDisappear:(BOOL)animated{ } ",__FUNCTION__);
}
- (void)dealloc
{
    //    [super dealloc];
    // 移除通知处理
//    NSLog(@"%s,最后执行方法，即视图控制器注销方法：- (void)dealloc { } ",__FUNCTION__);
    
}

- (void)didReceiveMemoryWarning {
//    NSLog(@"%s,⚠️收到内存警告的时候调用 ",__FUNCTION__);
    [super didReceiveMemoryWarning];
}
#pragma mark ♻️ 视图的生命周期 view life cycle end
#pragma mark - TabBar Initialize start
#pragma mark - 设置自定义中心按钮
- (void)setCustomtabbar
{
//    LYHTabBar *tabbar = [[LYHTabBar alloc]init];
//    [self setValue:tabbar forKeyPath:@"tabBar"];
//    [tabbar.centerBtn addTarget:self action:@selector(centerBtnClick:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
{
//    NSLog(@"点击的item:%ld title:%@", item.tag, item.title);
}

#pragma mark - 自定义中心按钮相应方法
- (void)centerBtnClick:(UIButton *)btn{
//    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"你点击了订单按钮" preferredStyle:UIAlertControllerStyleAlert];
//    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
//    [self presentViewController:alert animated:YES completion:nil];
}

//- (UIImage *)imageWithColor:(UIColor *)color{
//    // 一个像素
//    CGRect rect = CGRectMake(0, 0, 1, 1);
//    // 开启上下文
//    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
//    [color setFill];
//    UIRectFill(rect);
//    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    return image;
//}

- (void)setupChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage isHiddenNavgationBar:(BOOL)isHidden
{
    
//    static NSInteger index = 0;
//    vc.navigationItem.title = title;
//    vc.tabBarItem.title = title;
//    vc.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    vc.tabBarItem.tag = index;
//    index++;
//    LYHNavigationController *nav = [[LYHNavigationController alloc] initWithRootViewController:vc];
//    nav.navigationBar.translucent = NO; // 导航栏会导致加载的控制器视图偏移往上64
//
//    if (isHidden) {
//        nav.navigationBar.hidden = YES;
//    }
//
//    [self addChildViewController:nav];
}

// 支持设备自动旋转
- (BOOL)shouldAutorotate
{
    return NO;
}

+ (void)initialize
{
//    //设置未选中的TabBarItem的字体颜色、大小
//    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
//    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
//    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
//    //设置选中了的TabBarItem的字体颜色、大小
//    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
//    selectedAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
//    selectedAttrs[NSForegroundColorAttributeName] = [UIColor colorWithRed:153.0/255.0 green:93.0/255.0 blue:176.0/255.0 alpha:1];
//    
//    UITabBarItem *item = [UITabBarItem appearance];
//    
//    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
//    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
}

#pragma mark  TabBar Initialize end

#pragma mark - 🏃(代理)Delegate start
#pragma mark 🏃(代理)Delegate end
#pragma mark - ✍🏻(自定义方法) custom method start
#pragma mark ✍🏻 (自定义方法) custom method end
#pragma mark - 📶(网络请求)Network start
#pragma mark 📶(网络请求)Network end
#pragma mark - 💤 控件/对象懒加载 object start
#pragma mark 💤 控件/对象懒加载 object end

@end


#pragma mark - 参考代码

////
////  QKTabBarController.m
////  CustomTarBar
////
////  Created by 点点 on 2017/11/18.
////  Copyright © 2017年 DD. All rights reserved.
////
//
//#import "QKTabBarController.h"
//#import "HomeViewController.h"
//#import "OrderViewController.h"
//#import "NewsViewController.h"
//#import "MeViewController.h"
//#import "QKNavigationController.h"
//#import "QKTabBar.h"
//
//@interface QKTabBarController ()
//
//@end
//
//@implementation QKTabBarController
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor whiteColor];
//    [self setupChildVc:[[HomeViewController alloc] init] title:@"首页" image:@"tabBar_home" selectedImage:@"tabBar_home_click" isHiddenNavgationBar:NO];
//    [self setupChildVc:[[OrderViewController alloc] init] title:@"订单" image:@"tabBar_find" selectedImage:@"tabBar_find_click" isHiddenNavgationBar:NO];
//    [self setupChildVc:[[OrderViewController alloc] init] title:@"订单" image:@"tabBar_find" selectedImage:@"tabBar_find_click" isHiddenNavgationBar:NO];
//
//    [self setupChildVc:[[NewsViewController alloc] init] title:@"资讯" image:@"tabBar_find" selectedImage:@"tabBar_find_click" isHiddenNavgationBar:NO];
//    [self setupChildVc:[[MeViewController alloc] init] title:@"我的" image:@"tabBar_me" selectedImage:@"tabBar_me_click" isHiddenNavgationBar:NO];
//
//    [[UITabBar appearance] setBackgroundImage:[self imageWithColor:[UIColor whiteColor]]];
//    //  设置tabbar
//    [[UITabBar appearance] setShadowImage:[[UIImage alloc] init]];
//    // 设置自定义的tabbar
//    //    [self setCustomtabbar];
//}
//
//#pragma mark - 设置自定义中心按钮
//- (void)setCustomtabbar{
//    QKTabBar *tabbar = [[QKTabBar alloc]init];
//    [self setValue:tabbar forKeyPath:@"tabBar"];
//    [tabbar.centerBtn addTarget:self action:@selector(centerBtnClick:) forControlEvents:UIControlEventTouchUpInside];
//}
//
//- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
//{
//    NSLog(@"点击的item:%ld title:%@", item.tag, item.title);
//}
//
//#pragma mark - 自定义中心按钮相应方法
//- (void)centerBtnClick:(UIButton *)btn{
//    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"你点击了订单按钮" preferredStyle:UIAlertControllerStyleAlert];
//    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
//    [self presentViewController:alert animated:YES completion:nil];
//}
//
//- (UIImage *)imageWithColor:(UIColor *)color{
//    // 一个像素
//    CGRect rect = CGRectMake(0, 0, 1, 1);
//    // 开启上下文
//    UIGraphicsBeginImageContextWithOptions(rect.size, NO, 0);
//    [color setFill];
//    UIRectFill(rect);
//    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
//    UIGraphicsEndImageContext();
//    return image;
//}
//
//- (void)setupChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage isHiddenNavgationBar:(BOOL)isHidden
//{
//    static NSInteger index = 0;
//    vc.navigationItem.title = title;
//    vc.tabBarItem.title = title;
//    vc.tabBarItem.image = [[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
//    vc.tabBarItem.tag = index;
//    index++;
//    QKNavigationController *nav = [[QKNavigationController alloc] initWithRootViewController:vc];
//    if (isHidden) {
//        nav.navigationBar.hidden = YES;
//    }
//
//    [self addChildViewController:nav];
//}
//
//// 支持设备自动旋转
//- (BOOL)shouldAutorotate
//{
//    return NO;
//}
//
//+ (void)initialize
//{
//    //设置未选中的TabBarItem的字体颜色、大小
//    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
//    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
//    attrs[NSForegroundColorAttributeName] = [UIColor grayColor];
//    //设置选中了的TabBarItem的字体颜色、大小
//    NSMutableDictionary *selectedAttrs = [NSMutableDictionary dictionary];
//    selectedAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
//    selectedAttrs[NSForegroundColorAttributeName] = [UIColor colorWithRed:153.0/255.0 green:93.0/255.0 blue:176.0/255.0 alpha:1];
//
//    UITabBarItem *item = [UITabBarItem appearance];
//
//    [item setTitleTextAttributes:attrs forState:UIControlStateNormal];
//    [item setTitleTextAttributes:selectedAttrs forState:UIControlStateSelected];
//}
//
//@end

