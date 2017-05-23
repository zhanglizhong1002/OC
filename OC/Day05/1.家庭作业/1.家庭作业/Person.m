//
//  Person.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/25.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)setName:(NSString *)name
{
    _name = name;
}
-(NSString *)name
{
    return _name;
}

- (NSString *)description
{
    //返回的是一个字符串对象
    return [NSString stringWithFormat:@"name=%@", _name];
}

@end
