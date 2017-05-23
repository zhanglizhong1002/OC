//
//  main.m
//  1.家庭作业
//
//  Created by qianfeng on 15/9/28.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TeleBook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        TeleBook *dehua = [[TeleBook alloc] init];
        [dehua setName:@"liudehua" andTelePhone:@"13333333678"];
        TeleBook *xueyou = [[TeleBook alloc] init];
        [xueyou setName:@"zhangxueyou" andTelePhone:@"13333333789"];
        TeleBook *chengwu = [[TeleBook alloc] init];
        [chengwu setName:@"jinchengwu" andTelePhone:@"13333333345"];
        [xueyou addTeleBook:dehua];  //添加对象到可变字典
        [xueyou addTeleBook:xueyou];
        [xueyou addTeleBook:chengwu];
        [xueyou print];    //打印可变字典(注意：哪个对象调用的添加可变字典，就用哪个对象去打印出它添加的值)
        NSLog(@"查找到:%@",[xueyou searchName:@"liudehua"]);
        [xueyou deleteObj:@"liudehua"];
        [xueyou print];   //删除后再打印一次
        
    }
    return 0;
}
