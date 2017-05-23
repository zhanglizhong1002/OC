//
//  Product.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/12.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Product.h"

@interface Product ()
{
    NSInteger _counts;
}

@end

@implementation Product


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
            NSLog(@"只销售了%ld件玩具，继续!",count);
            sleep(1);
            count = [_delegate doWork];
        }
        NSLog(@"销售了10000件玩具，完成任务!");
    }
}

@end
