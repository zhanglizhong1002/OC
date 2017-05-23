//
//  main.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/30.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NSMutableArray+ReserveArray.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *arr = @[@"11",@"22",@"33",@"44"];
        NSMutableArray *mutArr = [NSMutableArray arrayWithArray:arr];
        NSLog(@"逆序前：%@",mutArr);
        [mutArr reserveArray];
        NSLog(@"逆序后:%@",mutArr);
        
    }
    return 0;
}
