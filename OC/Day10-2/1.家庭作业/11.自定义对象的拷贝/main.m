//
//  main.m
//  11.自定义对象的拷贝
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *per = [[Person alloc] init];
        per.name = @"xiaoqiang";
        per.age = 15;
        //per copy,会调用父类NSObject的copy，NSObject会指派调用copyWithZone方法
        Person *xiaobai = [per copy];  //自定义对象调用拷贝的方法
        NSLog(@"%@",xiaobai);
    }
    return 0;
}
