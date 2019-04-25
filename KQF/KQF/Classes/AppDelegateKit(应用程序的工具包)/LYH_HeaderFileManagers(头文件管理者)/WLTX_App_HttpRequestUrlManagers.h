//
//  WLTX_App_HttpRequestUrlManagers.h
//  WLTX
//
//  Created by liyuhong2019 on 2019/4/11.
//  Copyright © 2019 liyuhong165. All rights reserved.
//

#ifndef WLTX_App_HttpRequestUrlManagers_h
#define WLTX_App_HttpRequestUrlManagers_h


// 域名或者ip
#define WLTX_DomainOrIpUrl @"http://m.0201566.com/appapi/"

/*** 主页 ***/
#define Home_AdUrl @"banner.php"                    // 广告轮播图
#define Home_AdDetail @"banner_cont.php?id="        // 广告详情
#define Home_ShuttleRouteUrl @"zxzs.php"            // 专线展示

/*** 专线查询 ***/

/*** 我的 ***/
#define my_AboutUsUrl @"about.php"                  // 关于我们
//#define my_changePassword @"user_xgmm.php"          // 修改密码


/** 注册、登录、忘记密码、修改密码 */
#define my_getVerificationCode @"yzm.php"           // 发送验证码
#define my_isRightVerificationCode @"is_yzm.php"    // 验证码核对
#define my_registerUserInfo @"zhuce.php"            // 注册，注册用户信息




#endif /* WLTX_App_HttpRequestUrlManagers_h */
