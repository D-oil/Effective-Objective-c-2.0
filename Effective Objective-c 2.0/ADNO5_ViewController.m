//
//  ADNO5_ViewController.m
//  Effective Objective-c 2.0
//
//  Created by andong on 16/4/28.
//  Copyright © 2016年 com.AnDong. All rights reserved.
//

#import "ADNO5_ViewController.h"

enum EOCConnectionState{
    EOCConnectionStateDisConnected,
    EOCConnectionStateConnecting,
    EOCConnectionStateConnected,
//    kkkk
};
typedef enum EOCConnectionState EOCConnectionState;

//nsenum 能迅速创建枚举模板
//位枚举，可以同时定义多种枚举状态
typedef NS_ENUM(NSUInteger, ADEnumState) {
    ADEnumStateone   = 0,
    ADEnumStatetwo   = 1<<0,
    ADEnumStatethree = 1<<2,
};

@interface ADNO5_ViewController ()

@end

@implementation ADNO5_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    EOCConnectionState state1 = EOCConnectionStateConnected;
    //可以同时设置多种枚举
    ADEnumState state2 = ADEnumStateone | ADEnumStatetwo;
    //也可以通过判断判断时候包含其中一种枚举
    if (state2 & ADEnumStatetwo) {
        //...
    }
    //switch与enum
    //最后不要加default分支，这样，在加入新枚举之后，编译器会提示
    switch (state1) {
        case EOCConnectionStateDisConnected:
            
            break;
        case EOCConnectionStateConnecting:
            
            break;
        case EOCConnectionStateConnected:
            
            break;
    }
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
