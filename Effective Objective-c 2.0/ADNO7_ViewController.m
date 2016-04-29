//
//  ADNO_7ViewController.m
//  Effective Objective-c 2.0
//
//  Created by andong on 16/4/28.
//  Copyright © 2016年 com.AnDong. All rights reserved.
//

#import "ADNO7_ViewController.h"

@interface ADNO7_ViewController ()

@property (nonatomic,copy)NSString *firstName;

@end

@implementation ADNO7_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //对于第二点的疑问
    _firstName = @"hhh";
    NSString *str = _firstName;
    str = @"lll";
    NSLog(@"_firstName = %@,str = %@",_firstName,str);
    // _firstName = hhh,str = lll
    
    //这两种写法区别
    //1.直接访问实例变量，不经由“方法派发”处理，所以速度快很多
    //2.直接访问不会调用“设置方法”，就等于绕过了属性的“内存管理语义”，如ARC下声明一个Copy的属性，直接
    //3.直接访问实例变量，不会触发“键值观测（KVO）通知”
    //4.通过属性来访问有助于排查错误
    //折中方案是，写入实例变量是，用设置方法来做，要访问时直接访问
    self.firstName = @"Values";
    str = _firstName;
    
    //但有两种情况除外
    //1.属性是懒加载的
    //2.子类“覆写”父类设置方法
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
