//  控制器的基类
#import "LYHBaseViewController.h"
@interface LYHBaseViewController ()

@end

@implementation LYHBaseViewController
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
- (void)viewDidLoad {
    [super viewDidLoad];
//    NSLog(@"%s,第二个执行的方法，加载UI成功后调用：- (void)viewDidLoad{ } ",__FUNCTION__);
    
    self.view.backgroundColor = [UIColor whiteColor]; // 防止xib创建 push 导致 黑屏卡顿
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


#pragma mark - 🏃(代理)Delegate start
#pragma mark 🏃(代理)Delegate end
#pragma mark - ✍🏻(自定义方法) custom method start
#pragma mark ✍🏻 (自定义方法) custom method end
#pragma mark - 📶(网络请求)Network start
#pragma mark 📶(网络请求)Network end
#pragma mark - 💤 控件/对象懒加载 object start
#pragma mark 💤 控件/对象懒加载 object end
@end
