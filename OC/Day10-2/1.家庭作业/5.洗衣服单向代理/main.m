//
//  main.m
//  5.洗衣服单向代理
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Boy.h"
#import "Girl.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Boy *xiaoming = [[Boy alloc] init];
        Girl *xiaohong = [[Girl alloc] init];
        xiaoming.delegate = xiaohong;
        [xiaoming command];

    }
    return 0;
}
