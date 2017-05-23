//
//  main.m
//  7,字符串的内存管理
//
//  Created by qianfeng on 15/10/8.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       
        NSString *str = @"hello";
        NSString *str1 = [[NSString alloc] initWithString:str];
        
        //字符串看似非常不遵守黄金管理法则，无法进行retainCount，可用对象地址来管理内存
        //NSLog(@"retainCount = %ld",[str1 retainCount]);  err
       
        //字符串中retain的使用
#if 1
        NSString *str2 = [str1 retain];  //retain为引用计数＋1；
        NSLog(@"str1=%p",str1);   //retain后两个地址相同，也就是，两个地址指向同一个内存空间
        NSLog(@"str2=%p",str2);
        [str1 release];
        [str2 release];

        //不可变字符串的copy的使用相当于copy
        NSString *str3 = [str1 copy];
        NSLog(@"str1=%p",str1);
        NSLog(@"str3=%p",str3);

        //可变字符串的copy,会开辟一个空间
        NSMutableString *mutStr = [[NSMutableString alloc] initWithString:str];
        NSString *str4 = [mutStr copy];
        NSLog(@"mutStr=%p",mutStr);
        NSLog(@"str4=%p",str4);
#endif
        
        Person *per = [[Person alloc] init];
        [per setName:@"xiaoqiang"];
        [per release];
    }
    return 0;
}
