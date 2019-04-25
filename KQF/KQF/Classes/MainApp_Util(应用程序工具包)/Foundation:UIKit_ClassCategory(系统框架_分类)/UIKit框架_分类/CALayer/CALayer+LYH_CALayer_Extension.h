// xib设置圆角边框 参考 https://www.jianshu.com/p/a20385a777e2

#import <QuartzCore/QuartzCore.h>

NS_ASSUME_NONNULL_BEGIN

@interface CALayer (LYH_CALayer_Extension)
// 用户xib 设置圆角边框颜色
- (void)setBorderColorFromUIColor:(UIColor *)color;

@end

NS_ASSUME_NONNULL_END
