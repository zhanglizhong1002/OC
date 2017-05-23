//
//  Person.h
//  1.家庭作业
//
//  Created by qianfeng on 15/10/12.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

//使用归档与解档方法，需遵守<NSCoding>协议
@interface Person : NSObject<NSCoding>

@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)NSInteger age;
@end
