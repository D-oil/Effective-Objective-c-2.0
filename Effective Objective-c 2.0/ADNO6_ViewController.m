//
//  ADNO6_ViewController.m
//  Effective Objective-c 2.0
//
//  Created by andong on 16/4/28.
//  Copyright © 2016年 com.AnDong. All rights reserved.
//

#import "ADNO6_ViewController.h"

@interface ADNO6_ViewController ()
//strong （设置方法）保留新值，释放旧值，再将新值设置上去
@property (nonatomic,strong)NSString *string1;
//（设置方法）既不保留新值，也不释放旧值
@property (nonatomic,weak)NSString *string2;
//copy（设置方法）拷贝一个副本，再给副本赋值（相当于又创建一个对象）
@property (nonatomic,copy)NSString *string3;



@end

@implementation ADNO6_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //strong (string1 string2)strong
    //string1 和 string2 都拥有@“world”这块内存，一方被释放，另一个仍然强引用
    self.string1 = @"world";
    self.string2 = self.string1;
    self.string1 = nil;
    NSLog(@"%@",self.string2); //world
    
    //weak (string1 strong string2 weak)
    //这里到最后应该是输出nil，但方法还会保留这个对象到整个方法结束再释放
    self.string1 = @"world";
    self.string2 = self.string1;
    self.string1 = nil;
    NSLog(@"%@",self.string2); //nil
    
    //copy
    //string5也指向string3，在赋值操作时两个对象是同一对象
    self.string3 = @"world ";
    NSString *str5 = _string3;
    //string3 addr = 0x1022871c0,str5 addr = 0x1022871c0
    NSLog(@"string3 addr = %p,str5 addr = %p",self.string3,str5);
    //在执行str5的set方法时，会先拷贝一份string3，再对拷贝出的值赋值
    str5 = @"www";
    //string3 addr = 0x10960e1c0,str5 addr = 0x10960e180
    NSLog(@"string3 addr = %p,str5 addr = %p",self.string3,str5);
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
