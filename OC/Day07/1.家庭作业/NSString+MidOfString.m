//
//  NSString+MidOfString.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "NSString+MidOfString.h"

@implementation NSString (MidOfString)

-(char)midOfString
{
    NSInteger len = [self length];
    char c = [self characterAtIndex:(len-1)/2];
    return c;
}

@end
