//
//  NSObject+Runtime.h
//  HYYRunTime
//
//  Created by xuchunlei on 2017/3/3.
//  Copyright © 2017年 abc_show. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Runtime)
+(instancetype)hyy_objWithDict:(NSDictionary *)dict;

// 获取属性的数组
+(NSArray *)hyy_objProperties;


@end
