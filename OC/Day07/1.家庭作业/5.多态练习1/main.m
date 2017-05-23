//
//  main.m
//  5.多态练习1
//
//  Created by qianfeng on 15/9/29.
//  Copyright (c) 2015年 qianfeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Father.h"
#import "Son.h"
#import "SonWife.h"
#import "Other.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Father *xiexian = [[Father alloc] init];
        xiexian.name = @"xiexian";
        Son *tingfeng = [[Son alloc] init];
        tingfeng.name = @"tingfeng";
        SonWife *baizhi = [[SonWife alloc] init];
        baizhi.name  = @"baizhi";
        [xiexian ask:tingfeng];
        [xiexian ask:baizhi];
        
        Other *guanxi = [[Other alloc] init];
        guanxi.name = @"guanxi";
        //[xiexian ask:guanxi];  err 不是多态  不要这样调用，1.无继承关系；2.无重写；3.不是父类指针指向子类对象
        
    }
    return 0;
}
