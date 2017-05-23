//
//  Saler.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/12.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Saler.h"

@interface Saler ()
{
    NSInteger _counts;
}

@end

@implementation Saler

-(NSInteger)doWork
{
    _counts += arc4random()%5000+1;
    return _counts;
}

-(void)start
{
    if([_delegate respondsToSelector:@selector(doWork)])
    {
        NSInteger count = [_delegate doWork];
        while (count < 10000) {
            NSLog(@"只生产了%ld件，继续!",count);
            sleep(1);
            count = [_delegate doWork];
        }
        NSLog(@"厂家生产了10000件，完成任务");
    }
}

@end
