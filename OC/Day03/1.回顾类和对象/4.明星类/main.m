//
//  main.m
//  4.明星类
//
//  Created by qianfeng on 15/9/23.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Star.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1.开辟空间并初始化
        Star *degang = [[Star alloc] init];
        Star *zhiying = [[Star alloc] init];
        Star *zhiling = [[Star alloc] init];
        //2.给属性传值
        [degang setName:"degang" andAge:44];
        [zhiying setName:"zhiying" andAge:44];
        [zhiling setName:"zhiling" andAge:40];
        [degang compareAge:zhiying];
        [degang compareAge:zhiling];
        
        [Star test1];
    }
    return 0;
}
