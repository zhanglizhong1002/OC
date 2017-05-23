//
//  Boss.m
//  1.家庭作业
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import "Boss.h"

@implementation Boss


-(void)start{
    if([_delegate respondsToSelector:@selector(doWork)])
    {
        NSInteger counts = [_delegate doWork];
        while (counts<80) {
            NSLog(@"完成了百分之%ld,继续努力!",counts);
            sleep(1);
            counts = [_delegate doWork];
        }
        NSLog(@"工作任务完成了大于百分之80，通过");
    }
}

@end
