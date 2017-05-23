//
//  main.m
//  7.类别－字符串扩展逆序
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "NSString+ReserveString.h" //加入类别的头文件

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
     NSString *str = @"hello";
        //类别：给一个不能被继承的类扩展方法；例如：NSString，NSArray,NSDictionary
        //类别只能扩展方法，不能扩展成员变量
        str = [str reserveString];
        NSLog(@"逆序后：%@",str);

    }
    return 0;
}
