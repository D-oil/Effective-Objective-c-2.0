//
//  ADNO4_ViewController.m
//  Effective Objective-c 2.0
//
//  Created by andong on 16/4/28.
//  Copyright © 2016年 com.AnDong. All rights reserved.
//

#import "ADNO4_ViewController.h"

@interface ADNO4_ViewController ()

@end

//预处理过程中会将所有ANIMATION_DURATION替换成0.3
#define ANIMATION_DURATION 0.3

//static 代表私有，外部看不到，但这个声明是在.m所以本来就是私有的
//const  代表不可变，“常量”
//优点：有类型
static const NSInteger kNO4Animation_Durtion = 1;

//字符串
static NSString *const kNO4String = @"类型常量的明明规范是K+类名前缀+命名";

//.h
//extern NSString *const kNO4DidLoadNotification;
//这种写法在通知中心中非常好用，在.h中声明一个外部的常量作为通知的名，外部想获取这个通知直接使用外部变量就好
NSString *const kNO4DidLoadNotification = @"kNO4DidLoadNotification";

@implementation ADNO4_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //添加监听
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(DidLoadNotification:) name:kNO4DidLoadNotification object:self];
    //发送通知
    [[NSNotificationCenter defaultCenter] postNotificationName:kNO4DidLoadNotification object:self];
    
    
}
-(void)DidLoadNotification:(NSNotification *)Notfication
{
    UIAlertAction *cancelAlert = [UIAlertAction actionWithTitle:@"这是接收到通知以后的提示" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        
    }];
    UIAlertController *alertController = [[UIAlertController alloc]init];
    [alertController addAction:cancelAlert];
    
    [self presentViewController:alertController animated:YES completion:^{
        
    }];
    
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
