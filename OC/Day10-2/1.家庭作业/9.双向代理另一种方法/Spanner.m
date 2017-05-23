//
//  Spanner.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Spanner.h"

@interface Spanner ()
{
    NSInteger _counts;
}

@end

@implementation Spanner

-(NSInteger)doWork
{
    //NSLog(@"%@正在织毛衣",[self class]);
    _counts += arc4random()%5+1;
    return _counts;
}

-(void)start
{
    if([_delegate respondsToSelector:@selector(doWork)])
    {
        NSInteger counts =  [_delegate doWork];
        while (counts<20) {
            NSLog(@"画家画了%ld张画,继续",counts);
            sleep(1);
            counts = [_delegate doWork];
        }
        NSLog(@"画家画完了20张画，谢谢！");
    }
    
}

@end
