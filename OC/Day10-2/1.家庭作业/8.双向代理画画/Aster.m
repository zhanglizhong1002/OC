//
//  Aster.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Aster.h"

@implementation Aster

-(void)start
{
    if([_delegate respondsToSelector:@selector(spanWork)])
    {
        [_delegate spanWork];  //委托纺织工对象去调用织毛衣的方法
    }
}

-(void)astWork
{
    NSLog(@"%@正在画画",[self class]);
}

@end
