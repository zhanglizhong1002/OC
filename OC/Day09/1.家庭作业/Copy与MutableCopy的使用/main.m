//
//  main.m
//  Copy与MutableCopy的使用
//
//  Created by qianfeng on 15/10/8.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *str = @"hello";
        NSString *str1 = [[NSString alloc] initWithString:str];
        //NSMutableString *str2 = [str1 copy];   //不可变字符串的copy，需使用不可变字符串接收
        //[str2 appendString:@"world"];  //err  用可变字符串接收无法使用可变的方法
        NSString *str2 = [str1 copy];   //不可变字符串的copy，需使用不可变字符串接收
        NSLog(@"%@",str2);
        
        NSMutableString *mutStr = [[NSMutableString alloc] initWithString:str];
        NSString *str3 = [mutStr copy];   //可变字符串的copy，需使用不可变字符串接收
        NSLog(@"str3=%@",str3);
        
        NSMutableString *str4 = [str1 mutableCopy]; //不可变字符串的mutablecopy，需使用可变字符串接收
        [str4 appendString:@"world"];
        NSLog(@"str4 = %@",str4);
        
        
        NSMutableString *str5 = [mutStr mutableCopy]; //可变字符串的mutablecopy，需使用可变字符串接收
        [str5 appendString:@"world"];
        NSLog(@"str5 = %@",str5);

        
        
        
    }
    return 0;
}
