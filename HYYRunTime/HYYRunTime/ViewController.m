//
//  ViewController.m
//  HYYRunTime
//
//  Created by xuchunlei on 2017/3/3.
//  Copyright © 2017年 abc_show. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "NSObject+Runtime.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   NSArray *proList = [Person hyy_objProperties];
    
    NSLog(@"%@",proList);
    Person *person = [Person hyy_objWithDict:@{@"name":@"zhangsan",
                                               @"age":@18,
                                               @"height":@1.8}];
    NSLog(@"%@",person);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
