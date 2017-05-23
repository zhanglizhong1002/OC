//
//  QFDog.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/25.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "QFDog.h"

@implementation QFDog

-(void)eat
{
    NSLog(@"QFDog很会吃");
}
-(void)play
{
    NSLog(@"QFDog很会玩");
}

-(void)action:(SEL)sel
{
    //respondsToSelector:判断是否SEL中方法名是否正确的一个方法,如果正确，则执行，否则不执行SEL
    if([self respondsToSelector:sel])
    {
        [self performSelector:sel];   //类似函数回调
    }
}

@end
