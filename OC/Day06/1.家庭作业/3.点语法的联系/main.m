//
//  main.m
//  3.点语法的联系
//
//  Created by qianfeng on 15/9/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *xiaoming = [[Person alloc] init];
        xiaoming.name = @"xiaoming";
        xiaoming.age = 25;
        xiaoming.identical = @"432826198900229933";
        NSLog(@"name=%@,age=%ld,identical=%@",xiaoming.name,xiaoming.age,xiaoming.identical);
    }
    return 0;
}
