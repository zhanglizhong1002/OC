//
//  QFPerson.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "QFPerson.h"

@implementation QFPerson

-(id)init
{
    self = [super init];
    if(self)
    {
        _name = @"";
        _age = 0;
    }
    return self;
}
-(void)setName:(NSString *)name andAge:(NSInteger)age
{
    _name = name;
    _age  = age;
}

-(void)setName:(NSString *)name
{
    NSLog(@"调用set方法设置名字");
    _name = name;
}
-(void)setAge:(NSInteger)age
{
    NSLog(@"调用set方法设置年龄");
    _age = age;
}
-(NSString *)name
{
    NSLog(@"调用get方法获取名字");
    return  _name;
}
-(NSInteger)age
{
    NSLog(@"调用get方法获取年龄");
    return  _age;
}


@end
