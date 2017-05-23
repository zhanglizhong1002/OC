//
//  Person.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/24.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)setName:(NSString *)name andAge:(NSInteger)age
{
    _name = name;
    _age = age;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"name=%@,age=%ld", _name,_age];
}

@end
