//
//  UIImage+LYH_UIImage_Extension.h
//  WLTX
//
//  Created by liyuhong2019 on 2019/3/27.
//  Copyright © 2019 liyuhong165. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (LYH_UIImage_Extension)
// ImageWithColor 图片由颜色值生成
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;
@end

NS_ASSUME_NONNULL_END
