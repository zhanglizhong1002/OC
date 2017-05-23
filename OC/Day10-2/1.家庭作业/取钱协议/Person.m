//
//  Person.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)saveMoney:(NSInteger)money
{
    _money = money;
    NSLog(@"%@存了%ld万",_name,_money);
}

-(NSInteger)money
{
    return _money;
}

@end
