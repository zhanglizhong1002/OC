//
//  main.m
//  3.马的self应用
//
//  Created by qianfeng on 15/9/23.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Horse.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Horse *hanxue = [[Horse alloc] init];
        [hanxue setName:"hanxue"];
        [hanxue eat];
    }
    return 0;
}
