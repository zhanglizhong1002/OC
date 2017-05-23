//
//  main.m
//  9.双向代理另一种方法
//
//  Created by qianfeng on 15/10/9.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Arter.h"
#import "Spanner.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Arter *zihua = [[Arter alloc] init];
        Spanner *xiaopan = [[Spanner alloc] init];
        zihua.delegate = xiaopan;
        [zihua start];   //织毛衣
        
        xiaopan.delegate = zihua;
        [xiaopan start];  //画画

    }
    return 0;
}
