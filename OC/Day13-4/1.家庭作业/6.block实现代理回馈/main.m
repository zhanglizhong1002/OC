//
//  main.m
//  6.block实现代理回馈
//
//  Created by qianfeng on 15/10/14.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Boy.h"
#import "Girl.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Boy *xiaowang = [[Boy alloc] init];
        xiaowang.count = 20;  //传入20件，目的是在block回调中做判断，到达20件就不洗，否则继续；
        Girl *xiaoliu = [[Girl alloc] init];
        [xiaowang start:^NSInteger{  //xiaowang调用启动洗衣服的工作
             return [xiaoliu doWork];  //让代理者完成任务，完成一次任务后返回洗衣服的件数
        }];

    }
    return 0;
}
