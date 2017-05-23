//
//  Agent.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Agent.h"

@implementation Agent

-(NSInteger)searchHouse
{
    NSInteger price = arc4random()%5000+1;
    return price;
}

@end
