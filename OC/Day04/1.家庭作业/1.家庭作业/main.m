//
//  main.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/24.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StationTV1.h"

#import "StationTV2.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
    NSString *str = @"暴力的黄色小说,很暴力";
        StationTV1 *tv = [[StationTV1 alloc] init];
        [tv replaceWord:str];
        
        StationTV2 *tv2 = [[StationTV2 alloc] init];
        [tv2 setWord1:@"我们" andWord2:@"孩子"];
        [tv2 replaceWord:@"我们都是好孩子"];
        
    }
    return 0;
}
