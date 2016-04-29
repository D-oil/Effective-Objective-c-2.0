//
//  ADNO3_ViewController.m
//  Effective Objective-c 2.0
//
//  Created by andong on 16/4/28.
//  Copyright © 2016年 com.AnDong. All rights reserved.
//

#import "ADNO3_ViewController.h"

@interface ADNO3_ViewController ()

@end

@implementation ADNO3_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //字面数值 Number
    //能够以NSNumber实例表示的所有数据类型都可以使用字面量语法
    NSNumber *num1 = [NSNumber numberWithInt:1];
    NSNumber *num2 = @1;
    
//    NSNumber *BOOLNum = @Yes;
    NSNumber *floatNum = @16.8f;
    NSNumber *charNum = @'c';
    
    
    //字面量数组 Array
    //当字面量数组中出现空值时，字面量语法会抛出异常，
    //而第一种方法创建数组过程中，碰到nil就会提前结束，比起字面量语法，缺乏安全性
    NSArray *array1 = [NSArray arrayWithObjects:num1, num2,floatNum ,charNum,nil];
    NSArray *array2 = @[num1, num2,floatNum ,charNum];
    //操作数组
    id obj1 = [array1 objectAtIndex:0];
    id obj2 = array2[0];
    
    //字面量字典 Dictonary
    //使用字面量字典的好处同数组，而且简洁明了
    NSDictionary *dic1 = [NSDictionary dictionaryWithObjectsAndKeys:obj1,@"passWord",
                                                                    obj2,@"userName",
                                                                    nil];
    NSDictionary *dic2 = @{
                           @"name":@"hhhh",
                           @"passWord":@"0000"
                           };
    //局限性：所创建出来的对象必须属于Foundation框架，但一般都只会使用NSArray，NSDictionary，NSNumber。不会自己去定义类型
    
    //字面量语法创建出来的字符串、数组、字典对象都是不可变的，如果想要不可变版本
    NSMutableArray *mutableArray = [@[dic1,dic2] mutableCopy];
    
    [mutableArray removeAllObjects];
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
