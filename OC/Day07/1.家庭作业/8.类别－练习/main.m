//
//  main.m
//  8.类别－练习
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+MidOfString.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *str = @"1234";
        char c = [str midOfString];
        NSLog(@"返回中间字符:%c",c);
        
    }
    return 0;
}
