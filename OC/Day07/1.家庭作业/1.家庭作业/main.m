//
//  main.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Card.h"
#import "CardSys.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
 
        Card *zhangs = [[Card alloc] init];
        zhangs.name = @"zhangsan";
        zhangs.age= 20;
        zhangs.telePhone = @"1333333333";
        
        Card *lis = [[Card alloc] init];
        lis.name = @"lisi";
        lis.age= 18;
        lis.telePhone = @"14444444444";

        Card *wangw = [[Card alloc] init];
        wangw.name = @"wangwu";
        wangw.age= 50;
        wangw.telePhone = @"15555555";

        Card *zhaol = [[Card alloc] init];
        zhaol.name = @"wangwu";
        zhaol.age= 60;
        zhaol.telePhone = @"16666666";
        
        CardSys *sys = [[CardSys alloc] init];
        [sys addCard:zhangs];
        [sys addCard:lis];
        [sys addCard:wangw];
        [sys addCard:zhaol];
        [sys print];
        NSLog(@"查找到:%@",[sys search:@"lisi"]);
        
    }
    return 0;
}
