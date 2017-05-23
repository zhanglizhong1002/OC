//
//  Person.h
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

//自定义类遵守<NSCopying>协议
@interface Person : NSObject<NSCopying>
{
    NSString *_name;
    NSInteger _age;
}

@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)NSInteger age;

@end
