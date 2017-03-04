//
//  NSObject+Runtime.m
//  HYYRunTime
//
//  Created by xuchunlei on 2017/3/3.
//  Copyright © 2017年 abc_show. All rights reserved.
//

#import "NSObject+Runtime.h"
#import <objc/runtime.h>

@implementation NSObject (Runtime)
+(instancetype)hyy_objWithDict:(NSDictionary *)dict{
    
    id objc = [[self alloc]init];
    // 获取self属性列表
    NSArray *proList = [self hyy_objProperties];
    // 判断key是否在list中
    [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        
        if ([proList containsObject:key]) {
            // 属性存在  设置数值
            [objc setValue:obj forKey:key];
        }
        
    }];
    
    
    return objc;
}

+(NSArray *)hyy_objProperties{
    // 取得类的属性列表
    // 参数：   要获取的类    属性个数指针
    unsigned int count;
    objc_property_t *propertyList = class_copyPropertyList([self class], &count);
    NSMutableArray *arrM = [NSMutableArray array];
    // 遍历属性
    for (int i = 0; i < count; i++) {
        // 从数组中获取属性
        objc_property_t pty = propertyList[i];
        // 从pty 中获取属性的名称
        const char *pName = property_getName(pty);
        NSString *name = [NSString stringWithCString:pName encoding:NSUTF8StringEncoding];
        [arrM addObject:name];
//        NSLog(@"%s",pName);
        
    }
    // 释放
    free(propertyList);
    NSLog(@"%@",arrM);
    return arrM.copy;
    
}

@end
