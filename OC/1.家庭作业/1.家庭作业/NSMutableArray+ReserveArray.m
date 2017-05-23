//
//  NSMutableArray+ReserveArray.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/30.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "NSMutableArray+ReserveArray.h"

@implementation NSMutableArray (ReserveArray)

-(void)reserveArray
{
    //self代表的是外部调用reserveArray的可变数组对象
    NSInteger len = [self count];
    for(NSInteger i=0;i<len/2;i++)
    {
        [self exchangeObjectAtIndex:i withObjectAtIndex:len-1-i];
    }
}

@end
