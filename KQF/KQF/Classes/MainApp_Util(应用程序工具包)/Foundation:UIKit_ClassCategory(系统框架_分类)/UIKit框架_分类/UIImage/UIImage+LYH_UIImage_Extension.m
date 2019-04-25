//
//  UIImage+LYH_UIImage_Extension.m
//  WLTX
//
//  Created by liyuhong2019 on 2019/3/27.
//  Copyright © 2019 liyuhong165. All rights reserved.
//

#import "UIImage+LYH_UIImage_Extension.h"

@implementation UIImage (LYH_UIImage_Extension)
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size
{
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context,color.CGColor);
    CGContextFillRect(context, rect);
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return img;
}
@end
