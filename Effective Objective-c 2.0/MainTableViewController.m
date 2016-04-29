//
//  MainTableViewController.m
//  Effective Objective-c 2.0
//
//  Created by andong on 16/4/28.
//  Copyright © 2016年 com.AnDong. All rights reserved.
//

#import "MainTableViewController.h"
#import "ADEmployee.h"

@interface MainTableViewController ()
@end

@implementation MainTableViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    ADEmployee *e = [ADEmployee employeeWithType:ADEmployeeTypeDeveloper];
    [e doADaysWork];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source



@end
