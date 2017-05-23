//
//  main.m
//  10.autorelease与autoreleasepool区别
//
//  Created by qianfeng on 15/10/8.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
     
        Person *per = [[Person alloc] init];
        //[per release];   //引用计数为0，立即dealloc
        [per autorelease]; //先把引用计数－1放入到autoreleasepool，当自动释放池结束后再处理引用计数－1
        NSLog(@"程序释放");
    }//@autoreleasepool退出时执行delloc
    
    NSLog(@"程序即将结束");
    return 0;
}
