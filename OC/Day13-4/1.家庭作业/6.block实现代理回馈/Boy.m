//
//  Boy.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/14.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Boy.h"

@implementation Boy

-(void)start:(NSInteger (^)())block
{
    
     NSInteger count = block();  //block回调，相当于构成委托代理，让代理去完成任务，自己则相当于被代理者，根据代理反馈判断是非继续去做
    
    NSLog(@"-----%ld", count);
    while (count<_count) {
        NSLog(@"只洗了%ld件，继续！",count);
        sleep(1);
        count = block();  //继续回调，相比单向代理，代理回馈只多了一个代理反馈的判断
    }
    NSLog(@"终于洗完了%ld件，感谢！",_count);
}

@end
