//
//  Arter.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Arter.h"

@interface Arter ()
{
    NSInteger _counts;
}

@end

@implementation Arter

-(void)start
{
    if([_delegate respondsToSelector:@selector(doWork)])
    {
        //双向代理互相反馈
        NSInteger counts =  [_delegate doWork];
        while (counts<20) {
            NSLog(@"纺织工织了%ld件毛衣,继续",counts);
            sleep(1);
            counts = [_delegate doWork];
        }
        NSLog(@"纺织工织完了20件毛衣，谢谢！");
    }
}

-(NSInteger)doWork
{
    //NSLog(@"%@正在画画",[self class]);
    _counts += arc4random()%5+1;
    return _counts;
}

@end
