//
//  Boy.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/14.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Boy.h"

@implementation Boy

-(void)start:(void (^)(NSInteger))block
{
    block(_count);   //将启动的洗衣服的任务传出去  block回调
}

@end
