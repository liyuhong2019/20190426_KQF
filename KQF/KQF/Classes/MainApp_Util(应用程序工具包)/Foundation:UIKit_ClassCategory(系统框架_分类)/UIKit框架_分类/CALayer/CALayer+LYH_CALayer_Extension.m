//
//  CALayer+LYH_CALayer_Extension.m
//  WLTX
//
//  Created by liyuhong2019 on 2019/3/31.
//  Copyright © 2019 liyuhong165. All rights reserved.
//

#import "CALayer+LYH_CALayer_Extension.h"

@implementation CALayer (LYH_CALayer_Extension)

/**
 代码实现
 self.testView.layer.masksToBounds = YES;
 self.testView.layer.cornerRadius = 50;
 self.testView.layer.borderWidth = 5;
 self.testView.layer.borderColor = [UIColor blueColor].CGColor;
 */
- (void)setBorderColorFromUIColor:(UIColor *)color {
    YHLog(@"xib 设置边框颜色 需要重写calayer的边框 xib的属性是要以该方法名相同 borderColorFromUIColor");
    self.borderColor = color.CGColor;
}
@end
