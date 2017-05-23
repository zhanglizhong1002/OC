//
//  NSString+ReserveString.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "NSString+ReserveString.h"

@implementation NSString (ReserveString)

-(NSString *)reserveString
{
    //建立空的可变字符串
    NSMutableString *mutStr = [NSMutableString string];
    //self代表的是调用reserveString的字符串对象
    NSInteger len = [self length];
    for(NSInteger i=len-1;i>=0;i--)
    {//适用循环将字符串的每一个字符逆序取出
        char c = [self characterAtIndex:i];
        //取出后放入可变字符串中
        [mutStr appendFormat:@"%c",c];
    }
    return mutStr;  //返回一个逆序的字符串
}

@end
