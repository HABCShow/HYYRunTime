//
//  Person.m
//  HYYRunTime
//
//  Created by xuchunlei on 2017/3/3.
//  Copyright © 2017年 abc_show. All rights reserved.
//

#import "Person.h"

@implementation Person

-(NSString *)description{
    
    
    NSArray *keys = @[@"name",@"age",@"height"];
    return [self dictionaryWithValuesForKeys:keys].description;
    
}

@end
