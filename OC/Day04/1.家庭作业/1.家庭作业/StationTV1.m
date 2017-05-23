//
//  StationTV1.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/24.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "StationTV1.h"

@implementation StationTV1

-(void)replaceWord:(NSString *)oriStr
{
    //通过另一个字符串初始化可变字符串
    NSMutableString *mutStr = [[NSMutableString alloc] initWithString:oriStr];
    NSLog(@"替换前:%@",mutStr);
    //求长度的方法
    NSInteger len = [mutStr length];
    //rangeOfString:在原始串中查找子串
    NSRange range = [mutStr rangeOfString:@"黄色"];
    if(range.location != NSNotFound)//判断在原始串中有没有子串，有就进行替换
    {
    [mutStr replaceOccurrencesOfString:@"黄色" withString:@"XX" options:NSLiteralSearch range:NSMakeRange(0, len)];
    }
    len = [mutStr length];  //替换后，重新判断长度
    
    range = [mutStr rangeOfString:@"暴力"];
    if(range.location != NSNotFound)
    {
    [mutStr replaceOccurrencesOfString:@"暴力" withString:@"XX" options:NSLiteralSearch range:NSMakeRange(0, len)];
    }
    NSLog(@"替换后:%@",mutStr);
}

@end
