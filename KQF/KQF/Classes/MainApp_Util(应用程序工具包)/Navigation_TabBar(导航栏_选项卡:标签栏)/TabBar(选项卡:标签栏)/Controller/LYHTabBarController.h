#import <UIKit/UIKit.h>

@interface LYHTabBarController : UITabBarController

#pragma mark - 父类只是提供方法 不提供实现 让子类去实现
// 设置自定义中心按钮
- (void)setCustomtabbar;

// 自定义中心按钮相应方法
- (void)centerBtnClick:(UIButton *)btn;

//
- (UIImage *)imageWithColor:(UIColor *)color;

// 设置控制器
- (void)setupChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage isHiddenNavgationBar:(BOOL)isHidden;

// 支持设备自动旋转
- (BOOL)shouldAutorotate;

+ (void)initialize;

@end
