//
//  Girl.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/14.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Girl.h"

@interface Girl ()
{
    NSInteger _count;
}

@end

@implementation Girl

-(NSInteger)doWork
{
    _count += arc4random()%5+1;
    return _count;
}

@end
