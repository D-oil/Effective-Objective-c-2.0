//
//  ADEmployee.h
//  Effective Objective-c 2.0
//
//  Created by andong on 16/4/29.
//  Copyright © 2016年 com.AnDong. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, ADEmployeeType) {
    ADEmployeeTypeDeveloper,
    ADEmployeeTypeDesigner,
    ADEmployeeTypeFinance,
};

@interface ADEmployee : NSObject

+(instancetype)employeeWithType:(ADEmployeeType)type;
-(void)doADaysWork;
@end
