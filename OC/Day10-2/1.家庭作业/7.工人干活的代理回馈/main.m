//
//  main.m
//  7.工人干活的代理回馈
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Boss.h"
#import "Worker.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Boss *laozhang = [[Boss alloc] init];
        Worker *xiaoli = [[Worker alloc] init];
        laozhang.delegate = xiaoli;
        [laozhang start];
    }
    return 0;
}
