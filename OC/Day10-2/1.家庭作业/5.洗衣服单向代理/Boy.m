//
//  Boy.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Boy.h"

@implementation Boy

-(void)command
{
    if([_delegate respondsToSelector:@selector(doWork:)])
    {
        [_delegate doWork:20];
    }
}

@end
