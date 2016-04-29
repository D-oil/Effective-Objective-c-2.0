//
//  ADNO8_ViewController.m
//  Effective Objective-c 2.0
//
//  Created by andong on 16/4/28.
//  Copyright © 2016年 com.AnDong. All rights reserved.
//

#import "ADNO8_ViewController.h"

@interface ADNO8_ViewController ()
@property (nonatomic,readonly,assign)NSUInteger indentifier;
@end

@implementation ADNO8_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //== 比较的是两个对象的地址，或者两个基本数据类型的值
    
    //等同性判断 的关键方法
    //-(BOOL)isEqual:(id)object;
    //-(NSUIntger)hash;
    //仅当两个对象的地址完全相同，hash值也相同，才算两个相同对象
    //也可以自定义等同性判断方法
    //NSArray或NSDictionary这些集合，要考虑判断等同性的深度问题，如果数据过多，可以抽样比较
    //对于自定义的类，可以增加一个属性"唯一标识符"，当这个值相等，肯定是同一对象
    //@property (nonatomic,readonly,assign)NSUInteger indentifier;
}

-(BOOL)isEqual:(id)object
{
    if (self == object){return YES;}
    if ([self class] != [object class]) {return NO;}
    
    ADNO8_ViewController *obj = (ADNO8_ViewController *)object;
    if (![_firstName isEqualToString:obj.firstName]) {
        return NO;
    }
    if (![_lastName isEqualToString:obj.lastName]) {
        return NO;
    }
    if (_age != obj.age) {
        return NO;
    }
    return YES;
}
//这样写哈希方法，效率会高
- (NSUInteger)hash
{
    NSUInteger firstNameHash = [_firstName hash];
    NSUInteger lastNameHash  = [_lastName hash];
    NSUInteger ageHash = _age;
    return firstNameHash ^ lastNameHash ^ ageHash;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
