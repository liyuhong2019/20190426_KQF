//
//  HeaderFile_ThreeSDK_Ali.h
//  WLTX
//
//  Created by liyuhong2019 on 2019/3/10.
//  Copyright © 2019 liyuhong165. All rights reserved.
//

#ifndef HeaderFile_ThreeSDK_Ali_h
#define HeaderFile_ThreeSDK_Ali_h
// ------------- 友盟 SDK start -------------
#pragma mark - 友盟SDK start
// 友盟依赖组件
#import <UMCommon/UMCommon.h>
// 分享
#import <UMShare/UMShare.h>
// 日志输出
#import <UMCommonLog/UMCommonLogHeaders.h>

#import "ThreeSDK_Ali.h"

#pragma mark  友盟SDK end
// ------------- 友盟 SDK end -------------


#endif /* HeaderFile_ThreeSDK_Ali_h */



/**
 xcode 10 控制台提示
 问题1、Unable to look up screen scale
 解决问题1、https://blog.csdn.net/u011374880/article/details/84969342
 在Xcode中，转到Product - Scheme - Edit Scheme，选择左侧的’Run’，并在’Environment variables’部分中添加值为’disable’的OS_ACTIVITY_MODE
 操作系统活动模式 disable(禁用)
 */

/**
 1、Cocoapods 集成友盟 https://developer.umeng.com/docs/66632/detail/67204
 steps_1
 例子
 打开终端
 cd /Users/liyuhong2018/Desktop/李宇鸿/2019_ThreeSDK_Demo/CocoaPods_integration/UMSDK_CocoaPods
 
 steps_2
 pod init
 steps_3
 编辑 podfile文件
 steps_4
 输入需要依赖的第三方库
 #  ------------------ 友盟 start ------------------
 # 友盟 依赖库
 pod 'UMCCommon'
 pod 'UMCSecurityPlugins'
 
 # 友盟 日志库（调试）上架前可以移除
 pod 'UMCCommonLog'
 
 # 友盟 统计
 pod 'UMCAnalytics'
 
 # 友盟 推送
 #pod 'UMCPush'
 # 友盟 登录分享(微信版)
 # 集成微信(精简版0.2M)
 # pod 'UMCShare/Social/ReducedWeChat'
 # 集成微信(完整版14.4M)
 pod 'UMCShare/Social/WeChat'
 
 #  ------------------ 友盟 end ------------------
 
 */


/**
 功能实现
 1、配置info.plist 的sso白名单
 2、设置 info.plist 的 URL type
 3、按钮的功能实现
 */

