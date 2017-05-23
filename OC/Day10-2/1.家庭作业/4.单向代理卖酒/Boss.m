//
//  Boss.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Boss.h"

@implementation Boss

-(void)start
{
    //在启动方法中，让委托对象调用卖酒协议方法
    if([_delegate respondsToSelector:@selector(sale:)])
    {
        [_delegate sale:50000];
    }
}

@end
