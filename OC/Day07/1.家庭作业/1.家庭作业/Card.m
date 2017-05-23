//
//  Card.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Card.h"

@implementation Card

- (instancetype)init
{
    self = [super init];
    if (self) {
        _name = @"";
        _telePhone = @"";
        _age = 0;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"name=%@,age=%ld,telePhone=%@", _name,_age,_telePhone];
}

@end
