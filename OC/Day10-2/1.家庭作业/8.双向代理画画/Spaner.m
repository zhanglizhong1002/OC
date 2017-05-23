//
//  Spaner.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Spaner.h"

@implementation Spaner

-(void)spanWork
{
    NSLog(@"%@正在织毛衣",[self class]);
}

-(void)start
{
    if([_delegate respondsToSelector:@selector(astWork)])
    {
        [_delegate astWork];  //委托画家调用画画的协议方法
    }
}

@end
