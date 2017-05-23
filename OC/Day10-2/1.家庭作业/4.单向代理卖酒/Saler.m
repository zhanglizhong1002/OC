//
//  Saler.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Saler.h"

@implementation Saler

//3.代理者实现协议方法
-(void)sale:(NSInteger)counts
{
    NSLog(@"%@卖了%ld瓶酒",[self class],counts);
}

@end
