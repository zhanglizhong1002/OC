//
//  Person.h
//  1.家庭作业
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
@public
    //OC中的属性默认为@protected权限
    NSString *_name;
    NSInteger _age;
}

@property(nonatomic,copy)NSString *name;
@property(nonatomic,assign)NSInteger age;

@end
