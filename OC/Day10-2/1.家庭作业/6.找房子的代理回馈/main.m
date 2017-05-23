//
//  main.m
//  6.找房子的代理回馈
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"
#import "Agent.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *per = [[Person alloc] init];
        Agent *agent = [[Agent alloc] init];
        per.delegate = agent;
        [per start];
    }
    return 0;
}
