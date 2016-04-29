//
//  ADEmployee.m
//  Effective Objective-c 2.0
//
//  Created by andong on 16/4/29.
//  Copyright © 2016年 com.AnDong. All rights reserved.
//

#import "ADEmployee.h"
#import "ADEmployeeDeveloper.h"
#import "ADEmployeeDesigner.h"
#import "ADEmployeeFinance.h"


@implementation ADEmployee

//这个类相当于一个抽象的“基类”并不提供init方法，这个类不应该直接使用，而是使用它们的子类
+(instancetype)employeeWithType:(ADEmployeeType)type
{
    
    
    //Cocoa里的类族
    //大部分Collection类都是类族，例如：NSArray与NSMutableArray实际上有两个抽象基类，一个用于不可变数组，一个用于可变数组
    //这个判断里永远不会执行，因为[arr1 class]所返回的绝不会是NSArray本身，
    //因为NSArray初始化所返回的那个实例其实是隐藏在类族公共接口后面的某个内部类型
    NSArray *arr1 = [NSArray arrayWithObjects:@1,@"888",@"  " ,nil];
    if ([arr1 class] == [NSArray class]) {
        //will never be hit
    }
    //不过依然有办法判断某个实例所属的类是否位于类族中。
    NSArray *arr2 = [NSArray arrayWithObjects:@1,@"888",@"  " ,nil];
    if ([arr2 isKindOfClass:[NSArray class]]) {
        //will be hit
    }
    
    switch (type) {
        case ADEmployeeTypeDeveloper:
            return [ADEmployeeDeveloper new];
            break;
        case ADEmployeeTypeDesigner:
            return [ADEmployeeDesigner new];
            break;
        case ADEmployeeTypeFinance:
            return [ADEmployeeFinance new];
            break;
    }
    
   
}
-(void)doADaysWork
{

}


//



@end
