//
//  Father.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Father.h"

@implementation Father

-(void)ask:(Father *)fa
{
    NSLog(@"%@问%@:孩子是谁的？",_name,[fa name]);
    [fa answer];
}

-(void)answer
{
    NSLog(@"%@不知道孩子是谁的",[self class]);
}

@end
