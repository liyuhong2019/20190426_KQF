//
//  Test1_ViewController.m
//  WLTX
//
//  Created by lee on 2019/3/6.
//  Copyright © 2019年 liyuhong165. All rights reserved.
//

#import "Test1_ViewController.h"

@interface Test1_ViewController ()

@end

@implementation Test1_ViewController
- (instancetype)init
{
    if (self = [super init]) {
        NSLog(@"初始化test1");
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
